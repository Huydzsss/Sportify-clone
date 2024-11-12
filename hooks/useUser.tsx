import { Subscription, UserDetails } from "@/type";
import { User } from "@supabase/auth-helpers-nextjs";
import { useSessionContext, useUser as superUser } from "@supabase/auth-helpers-react";
import { createContext, useContext, useEffect, useState } from "react";

type UserContextType = {
    accessToken: string | null;
    user: User | null;
    userDetails: UserDetails | null;
    isLoading: boolean;
    subscription: Subscription | null;
};

export const UserContext = createContext<UserContextType | undefined>(undefined);

export interface Props {
    [propName: string]: any;
}

export const MyUserContextProvider = (props: Props) => {
    const {
        session,
        isLoading: isLoadingUser,
        supabaseClient: supabase
    } = useSessionContext();

    const user = superUser();
    const accessToken = session?.access_token ?? null;
    const [isLoadingData, setIsLoadingData] = useState(false);
    const [userDetails, setUserDetails] = useState<UserDetails | null>(null);
    const [subscription, setSubscription] = useState<Subscription | null>(null);

    const getUserDetails = async () => {
        const { data, error } = await supabase.from('users').select('*').single();
        if (error){
            console.log('Error fetching user details:', error);
        
        }
        return data;
    };

    const getSubscription = async () => {
        const { data, error } = await supabase
            .from('subscriptions')
            .select('*, prices(*, products(*))')
            .in('status', ['trialing', 'active'])
            .single();

        if (error) {
            console.log('Error fetching subscription:', error);
        }
        return data;
    };
        
    useEffect(() => {
        if (user && !isLoadingData && !userDetails && !subscription) {
            setIsLoadingData(true);

            Promise.allSettled([getUserDetails(), getSubscription()]).then((results) => {
                const userDetailResult = results[0];
                const subscriptionResult = results[1];

                if (userDetailResult.status === "fulfilled" && userDetailResult.value) {
                    setUserDetails(userDetailResult.value as UserDetails);
                }
                if (subscriptionResult.status === "fulfilled" && subscriptionResult.value) {
                    setSubscription(subscriptionResult.value as Subscription);
                }

                setIsLoadingData(false);
            });
        } else if (!user && !isLoadingUser && !isLoadingData) {
            setUserDetails(null);
            setSubscription(null);
        }
    }, [user, isLoadingUser]);

    const value = {
        accessToken,
        user,
        userDetails,
        isLoading: isLoadingData || isLoadingUser,
        subscription
    };

    return <UserContext.Provider value={value} {...props} />;
};

export const useUser = () => {
    const context = useContext(UserContext);
    if (context === undefined) {
        throw new Error('useUser must be used within a MyUserContextProvider');
    }
    return context;
};
