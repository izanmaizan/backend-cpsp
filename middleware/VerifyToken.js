import jwt from "jsonwebtoken";

// ini di test terlebih dahulu
export const verifyToken = (req, res, next) => {
  const token = req.cookies.refreshToken; // Mengambil token dari cookie
  if (!token) {
    return res.sendStatus(401);
  }
  jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, decoded) => {
    if (err) {
      return res.sendStatus(403);
    }
    req.user = decoded; // Simpan informasi user ke dalam request
    next();
  });
};

// ini yang valid 
// export const verifyToken = (req, res, next) => {
//   const authHeader = req.headers["authorization"];
//   const token = authHeader && authHeader.split(" ")[1];
//   if (token == null) {
//     return res.sendStatus(401);
//   }
//   jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, decoded) => {
//     if (err) {
//       return res.sendStatus(403);
//     }
//     req.user = decoded;
//     next();
//   });
// };
