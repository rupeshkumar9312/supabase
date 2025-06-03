FROM node:18

WORKDIR /app

RUN git clone https://github.com/supabase/supabase

WORKDIR /app/supabase/studio

RUN yarn install && yarn build

EXPOSE 3000

CMD ["yarn", "start"]