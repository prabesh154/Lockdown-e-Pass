

  SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
  START TRANSACTION;
  SET time_zone = "+00:00";


  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!40101 SET NAMES utf8mb4 */;

  --
  -- Database: `ldps`
  --

  -- --------------------------------------------------------

  --
  -- Table structure for table `tbladmin`
  --

  CREATE TABLE `tbladmin` (
    `ID` int(10) NOT NULL,
    `AdminName` varchar(120) DEFAULT NULL,
    `UserName` varchar(120) DEFAULT NULL,
    `MobileNumber` bigint(10) DEFAULT NULL,
    `Email` varchar(120) DEFAULT NULL,
    `Password` varchar(200) DEFAULT NULL,
    `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

  --
  -- Dumping data for table `tbladmin`
  --

  INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
  (1, 'lpds', 'admin', 1234567890, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-05-14 06:44:27');

  -- --------------------------------------------------------

  --
  -- Table structure for table `tblcategory`
  --

  CREATE TABLE `tblcategory` (
    `ID` int(10) NOT NULL,
    `CategoryName` varchar(200) DEFAULT NULL,
    `CreationDate` timestamp NULL DEFAULT current_timestamp()
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

  --
  -- Dumping data for table `tblcategory`
  --

  INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
  (1, 'Logistic Deliveries', '2021-04-14 07:27:32'),
  (2, 'Medical Professionals', '2021-04-14 07:49:09'),
  (3, 'Essential Services', '2021-04-14 07:49:22'),
  (4, 'eccomerce delivery boys', '2021-04-14 07:49:47'),
  (5, 'Medical Supply', '2021-04-14 07:50:36'),
  (8, 'Buy Grocery', '2021-06-30 15:05:55');

  -- --------------------------------------------------------

  --
  -- Table structure for table `tblpass`
  --

  CREATE TABLE `tblpass` (
    `ID` int(10) NOT NULL,
    `PassNumber` varchar(200) DEFAULT NULL,
    `FullName` varchar(200) DEFAULT NULL,
    `ContactNumber` bigint(10) DEFAULT NULL,
    `Email` varchar(200) DEFAULT NULL,
    `IdentityType` varchar(200) DEFAULT NULL,
    `IdentityCardno` varchar(200) DEFAULT NULL,
    `Category` varchar(100) DEFAULT NULL,
    `FromDate` varchar(200) DEFAULT NULL,
    `ToDate` varchar(200) DEFAULT NULL,
    `PasscreationDate` timestamp NULL DEFAULT current_timestamp()
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

  --
  -- Dumping data for table `tblpass`
  --

  INSERT INTO `tblpass` (`ID`, `PassNumber`, `FullName`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `FromDate`, `ToDate`, `PasscreationDate`) VALUES
  (1, '286529906', 'Yogesh Kumar', 4654464646, 'yogi@gmail.com', 'Nagrita Card', 'AD-122346', 'Cleaning', '2021-04-14', '2021-05-14', '2021-04-14 11:47:03'),
  (2, '915773340', 'Suresh Khanal', 9879878978, 'suresh@gmail.com', 'Any Other Govt Issued Doc', 'KTI-896567', 'Essential Services', '2021-04-14', '2021-07-31', '2021-04-13 11:50:15'),
  (3, '884595667', 'jitendra mandal', 1234567890, 'serbermz2021@gmail.com', 'Voter Card', '5235252', 'Essential Services', '2021-04-16', '2021-04-19', '2021-04-16 02:38:27'),
  (4, '189062898', 'ramesh Juarez', 123456789, 'ramesh@gmail.com', 'Passport', '123456789', 'Buy Grocery', '2021-05-14', '2021-05-21', '2021-05-14 15:07:05');

  --
  -- Indexes for dumped tables
  --

  --
  -- Indexes for table `tbladmin`
  --
  ALTER TABLE `tbladmin`
    ADD PRIMARY KEY (`ID`);

  --
  -- Indexes for table `tblcategory`
  --
  ALTER TABLE `tblcategory`
    ADD PRIMARY KEY (`ID`);

  --
  -- Indexes for table `tblpass`
  --
  ALTER TABLE `tblpass`
    ADD PRIMARY KEY (`ID`);

  --
  -- AUTO_INCREMENT for dumped tables
  --

  --
  -- AUTO_INCREMENT for table `tbladmin`
  --
  ALTER TABLE `tbladmin`
    MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

  --
  -- AUTO_INCREMENT for table `tblcategory`
  --
  ALTER TABLE `tblcategory`
    MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

  --
  -- AUTO_INCREMENT for table `tblpass`
  --
  ALTER TABLE `tblpass`
    MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
  COMMIT;

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
