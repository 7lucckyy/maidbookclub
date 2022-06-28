const mysql= require('mysql')

const pool = mysql.createPool({
  database: 'ums',
  password: '',
  user: 'root',
  host:'localhost'
})

// exports.view = (req, res) => {
//   pool.getConnection((err, connection) => {
//     if (err) throw err
//     console.log(`connected ${connection.threadId}`);
//     connection.query('SELECT  * FROM user', (err, rows) => {
//       connection.release();
//       if (!err){
//          res.render('home',{rows}) 
//       } else { console.log(err); }
//       console.log('the data from user table: \n',rows);
//     } )
//  })  
// }
// exports.find = (req, res) => {
//   pool.getConnection((err, connection) => {
//     if (err) throw err
//     console.log(`connected ${connection.threadId}`);

//     let searchTerm = req.body.search;

//     connection.query('SELECT * FROM user WHERE firstName LIKE ?', ['%'+ searchTerm+ '%'], (err, rows) => {
//       connection.release();
//       if (!err) {
//         res.render('home', {rows})
//       }else{console.log(err);}
//     })

//   })
// }

exports.form = (req, res) => {
  res.render('add-user')
}
exports.page = (req, res) => {
  res.render('page')
}
exports.book = (req, res) => {
  res.render('book')
}
exports.mentor = (req, res) => {
  res.render('mentor')
}
exports.biography = (req, res) => {
  res.render('biography')
}
exports.activity = (req, res) => {
  res.render('activity')
}
exports.about = (req, res) => {
  res.render('about')
}
exports.contact = (req, res) => {
  res.render('contact')
}

// exports.create = (req, res) => {
//   //res.render('add-user')
// const {firstName, lastName, email,phone} = req.body
//   pool.getConnection((err, connection) => {
//     if (err) throw err
//     console.log(`connected ${connection.threadId}`);

//     let searchTerm = req.body.search;

//     connection.query('INSERT INTO user SET firstName=?, lastName=?,email=?,phone=?',
//       [firstName, lastName, email, phone], (err) => {
//       connection.release();
//       if (!err) {
//         res.render('add-user',)
//       }else{console.log(err);}
//     })

//   })
// }

// exports.crmentor = (req, res) => {
  
// const {firstName, lastName, Email,PhoneNumber, Role} = req.body
//   pool.getConnection((err, connection) => {
//     if (err) throw err
//     console.log(`connected ${connection.threadId}`);

//     let Term = req.body.search;

//     connection.query('INSERT INTO mentor SET firstName=?, lastName=?,Email=?,PhoneNumber=?, Role=?',
//       [firstName, lastName, Email, PhoneNumber, Role], (err) => {
//       connection.release();
//       if (!err) {
//         res.render('mentor',)
//       }else{console.log(err);}
//     })

//   })
// }




