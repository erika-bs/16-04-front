import axios from "axios";

const api = axios.create({
    baseURL: "/api/", // o proxy vai lidar com essa url
});

export default api;