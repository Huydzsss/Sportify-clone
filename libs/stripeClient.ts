import { loadStripe, Stripe } from '@stripe/stripe-js';

let stripePromise: Promise<Stripe | null>;

export const getStripe = (): Promise<Stripe | null> => {
  if (!stripePromise) {
    // Kiểm tra khóa công khai
    const stripePublishableKey = process.env.NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY;
    if (!stripePublishableKey) {
      console.error("Stripe publishable key is not defined.");
      return Promise.resolve(null); // Trả về null nếu không có khóa
    }

    stripePromise = loadStripe(stripePublishableKey);
  }

  return stripePromise;
};
