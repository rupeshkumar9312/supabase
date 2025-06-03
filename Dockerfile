FROM node:18

WORKDIR /app

RUN git clone https://github.com/supabase/supabase

WORKDIR /app/supabase/studio

RUN npm install && npm build

EXPOSE 3000

CMD ["npm", "start"]
