-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-05-15 05:51:17
-- 服务器版本： 5.7.18
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cAuth`
--

-- --------------------------------------------------------

--
-- 表的结构 `cAppinfo`
--

CREATE TABLE `cAppinfo` (
  `appid` char(36) DEFAULT NULL,
  `secret` char(64) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL,
  `login_duration` int(11) DEFAULT NULL,
  `qcloud_appid` char(64) DEFAULT NULL,
  `session_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `cAppinfo`
--

INSERT INTO `cAppinfo` (`appid`, `secret`, `ip`, `login_duration`, `qcloud_appid`, `session_duration`) VALUES
('wx43906d390cba4987', '', '119.29.168.78', 1000, '1255679565', 2000);

-- --------------------------------------------------------

--
-- 表的结构 `cSessionInfo`
--

CREATE TABLE `cSessionInfo` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会话管理用户信息';

--
-- 转存表中的数据 `cSessionInfo`
--

INSERT INTO `cSessionInfo` (`open_id`, `uuid`, `skey`, `create_time`, `last_visit_time`, `session_key`, `user_info`) VALUES
('oodE24_0E8ThRr1rD6gs884WuO8A', '52f8ff48-f300-4cc2-922b-dc3f04c3c32b', 'fc8907f2382b2684cd942256a600b2a4b0d2e960', '2018-05-11 05:35:03', '2018-05-11 05:35:03', 'hQBWs7dPB7y03k90SGLX8A==', '{\"openId\":\"oodE24_0E8ThRr1rD6gs884WuO8A\",\"nickName\":\"张宏烨™\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Xiamen\",\"province\":\"Fujian\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLf1D7XGBVEAcJqIiaXmRI7dloqmALNMuOOQQRRKOCTg59CTNibcDCPkNYfVwNGxiancbmksPBdjIibNA/132\",\"watermark\":{\"timestamp\":1526016902,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_3r6vMFlBmzl99g92XjGE0', '8bf53e8f-5550-4ebb-9fcc-4594ddb3169a', '6a8dc0a6eec84cdf1d48fe4c32c0343180b4e9ea', '2018-05-13 07:33:39', '2018-05-13 07:33:39', '44pJ6yqSVncqlIKanxakUg==', '{\"openId\":\"oodE24_3r6vMFlBmzl99g92XjGE0\",\"nickName\":\"Aubery🎵阿苑\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/D6snfE4G2kvm2bJNYaUeRMKTpYYf2GHaCVpRJ1hAps2yP5ONvqq9icZ7JLRxHDXpj4aXGOWfP0K9PtPW7ASywsQ/132\",\"watermark\":{\"timestamp\":1526196817,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_4mSlaxO5r4qBD_C_Dvj_w', 'eedcfb71-28d8-4675-b2b9-83c6b1934354', 'a2a47671ae6378c8ca6583c966abeaec903b40bd', '2018-05-11 08:00:54', '2018-05-11 08:00:54', '+L0J7WcBSt4r6nhnFWG7mw==', '{\"openId\":\"oodE24_4mSlaxO5r4qBD_C_Dvj_w\",\"nickName\":\"Page\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Guangzhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLV0cqnUWJRCwlW6WibricbjTmxhAF6ISsF4I32BNTBhDLIiaZ8dqAyw4sGhZASjavbriaD23Qccpc2Ow/132\",\"watermark\":{\"timestamp\":1526025649,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_7jIys881HhvYPIjCBfQXc', '221ef3b8-e192-44e9-85ad-7202370f6c26', '49650ad965fd69b8a08baef795a3456ddcfdc87c', '2018-05-15 05:41:11', '2018-05-15 05:41:11', 'u364J8OkrmpsqsAbES6Utw==', '{\"openId\":\"oodE24_7jIys881HhvYPIjCBfQXc\",\"nickName\":\"田晗\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/WYwiaQ2DYNeLeENgnEIuHFSqk3YUHYsOhn9r0hvUllu6CjaUXLEFta3fAWghZavSYHYmxtpBQBiaWoPskzyFjS3Q/132\",\"watermark\":{\"timestamp\":1526362869,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_FvzNDHJk4oXQqcAyNadlQ', '022f7a52-922f-4bad-bc29-b533ab90844f', 'a071931fb918b67652823f05ef5fe7d3eb76510b', '2018-05-11 02:28:27', '2018-05-11 02:28:27', 'gwKKeZHuEHlAAT7i6bnIrQ==', '{\"openId\":\"oodE24_FvzNDHJk4oXQqcAyNadlQ\",\"nickName\":\"🍋汉明®\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Guangzhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLX3ObF3UaLU9bdIqkLUeErb4rVOpAMKa9YaMyHib9Yicns53E0KHErvYjQribyKpf0McpqoQw5meClg/132\",\"watermark\":{\"timestamp\":1526005705,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_KvBCV4H9d1f43avoaezRE', 'bd585c47-aee7-4419-ad72-7b0cc5809125', '4cb8e6a79749f26d71756f5f6bfc8b6a24d5e96e', '2018-05-13 13:23:40', '2018-05-13 13:23:40', '0wV9XnZx78rDNkEcp4tEyg==', '{\"openId\":\"oodE24_KvBCV4H9d1f43avoaezRE\",\"nickName\":\"东莞水工\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Dongguan\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/S5Kt28dcR0cbhyXwU8hJFbaV4CH1icP2GefQibA7xSWB5NU3Mw9UJldP2Q4STK1B2TgqOwN7BwHhWJczDPESc7kA/132\",\"watermark\":{\"timestamp\":1526217818,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_LmbcP5cji8DXHDt2jQemw', '5b808225-1510-4636-83a5-eaf8919c5e28', 'c2cfae0ff8c67a25123c41e9d6c2c0835b0c435e', '2018-05-11 10:22:56', '2018-05-11 10:22:56', '/FXVEeadrW5w9AUMFjhL+A==', '{\"openId\":\"oodE24_LmbcP5cji8DXHDt2jQemw\",\"nickName\":\"小白菜\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/BibjStpqUdFhQNW9XBcJhxialRw0CrKPlRveqPyRuYIJgYibF0uBqE9AN3Nd8iaia3PL2dUyklju8C642DiaibspvOVJg/132\",\"watermark\":{\"timestamp\":1526034174,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_NdhOLi90lNAAaBW6Td3JI', '382aa75b-d0b3-4c30-b548-0bafe7c23aaf', '6a60d0a54af61f748a21ecc57e79b2c27cbdc578', '2018-05-13 05:42:16', '2018-05-13 05:42:16', '1Cz6czfmPhxiVKlm2sT/cA==', '{\"openId\":\"oodE24_NdhOLi90lNAAaBW6Td3JI\",\"nickName\":\"Christina\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/VR4nRI1lc4MjauqicBh4nxCsBzz7zSOYU4DaD3hc2cjpibeLchJw3RCldWTYQHWo7sCz21k5hq3SolwCyT0XVJJg/132\",\"watermark\":{\"timestamp\":1526190134,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_nPN1P4MtHiU0dHFs6dAog', '2fc8f321-9521-42f9-9e2b-4420d6636705', 'a786efd29a1633d0f21775ba7553ad495db6fe22', '2018-05-12 16:42:17', '2018-05-12 16:42:17', '9EgYSZtUK+I2ERc0FMmo4A==', '{\"openId\":\"oodE24_nPN1P4MtHiU0dHFs6dAog\",\"nickName\":\"Bright\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"Paris\",\"country\":\"France\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/wPk8IicAoQayicbATVLT524bLfGOxRicm3XMUay48jpQhdJw9kt8QofdU6yBA9ibrsVJZPvzibo6pNGaicx2HMz3rHEQ/132\",\"watermark\":{\"timestamp\":1526143335,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_s-Ukj1LGysE8OB5FGW3qw', 'dc6da0a3-d7df-4c56-b03a-ccb2673c327f', 'f50369e769ff7ea285785a2a71d5f85b2784f064', '2018-05-12 11:28:36', '2018-05-12 11:28:36', 'ihZ+33AnOwNFSuy+lI9WBQ==', '{\"openId\":\"oodE24_s-Ukj1LGysE8OB5FGW3qw\",\"nickName\":\"LEO\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/t6ULib83VEHb9a9uWyXYJfZyvJKgkNjNCo6aQ6XuMs26tNaqdrBm0LauCAoetsfF2voBWuIwRrPUz2lzGgbmO2Q/132\",\"watermark\":{\"timestamp\":1526124514,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_s1_ZCtPpnAVaLD-fzXmGY', '221922de-af77-4e6c-bc9c-e667e53d3d91', 'ed21c38a750d3fec4f6311343b0c7f65798adb83', '2018-05-13 13:58:23', '2018-05-13 13:58:23', 'NeBO16TdRZT5A/MzyWZQ8g==', '{\"openId\":\"oodE24_s1_ZCtPpnAVaLD-fzXmGY\",\"nickName\":\"林静影\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Guangzhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJR8dzib9Ea6oftKK2B9DQsYF4zc7moeYOWxAVVWb8bxyLQWBHMglTNKia8FreEHqJC8YxZECC16wjQ/132\",\"watermark\":{\"timestamp\":1526219895,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24_xgy8EdCX7e16zpUMd9Byw', 'd95dae3b-697e-4e91-94db-2d394d997781', '1f2d6d57030d2624eacf0c74ec2f1e0ba0cc829d', '2018-05-13 13:44:16', '2018-05-13 13:44:16', '3/RbifAm5q8qIr7EfVkAzA==', '{\"openId\":\"oodE24_xgy8EdCX7e16zpUMd9Byw\",\"nickName\":\"Megan\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Guangzhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/QhDMHl1Ch71jO9tlGZWlKBwGXo43ejbIvd5L5XaoyfWB8yAZLP6RcmcicrX2Swk5TrGMkxHEXpBMUGJB6KWksqw/132\",\"watermark\":{\"timestamp\":1526219052,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24-1zNrqSpdfbSv8gKaYp41M', '71cdd6b0-83a6-41f9-8507-78ec3a927060', 'a39df1d55e87a77baa4c7f20b8167e7504e9b62a', '2018-05-12 23:06:32', '2018-05-12 23:06:32', 'iF6sdJFGJblvV6NeaJogow==', '{\"openId\":\"oodE24-1zNrqSpdfbSv8gKaYp41M\",\"nickName\":\"刘忠利\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Huanggang\",\"province\":\"Hubei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epO1tjuRUMrNz9fFLdbgpaspUV0EKUVUHxFBZOJVAKlrNniaAkrj1oeeu3kfJumYJMVLndlAypebMA/132\",\"watermark\":{\"timestamp\":1526166389,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24-8RxcTx1W3j_bpROxwN5Uc', 'efeee660-1ab2-4dc7-88f1-4d593408f8f8', '4911924e8b43807770de2e62d70d4b1372afbf4e', '2018-05-12 13:32:59', '2018-05-12 13:32:59', '8fU0tHBOLAnWypK2UW5G6g==', '{\"openId\":\"oodE24-8RxcTx1W3j_bpROxwN5Uc\",\"nickName\":\"fish\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/owI9cFJtXicL8iagKkg0GYGEU602hic7qn3SmXKdNjokGwHSYJ4kZS4nxx7pBic5rXrh8UNt44pwn5UH2GicCibiaAcWQ/132\",\"watermark\":{\"timestamp\":1526131977,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24-N8_FRslBDbyAtZHdjNGT0', 'ae3cbde4-6778-44d7-b58c-0710aba3f6dc', '2106ee6e7783fc44d6ae18157e82435803ada856', '2018-05-12 15:35:45', '2018-05-12 15:35:45', 'Y9SFa+IkEdXvDmIF8LNj1w==', '{\"openId\":\"oodE24-N8_FRslBDbyAtZHdjNGT0\",\"nickName\":\"DiDi珠宝首饰高端订制\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/EEVbzV6ZZ0NFzlbWR645RiaV9hWsP1Pibx0ZGVYu4ibibhdoBjMI3fiaxtWDyYMFMc5y2KaUy19TNeh2msH8y7kzQRQ/132\",\"watermark\":{\"timestamp\":1526139343,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24-NCvx93St4_5w35KUe9Fek', '7275087b-6827-4e53-8857-060631f023cb', 'a89daef0f07d5bd44fcfabbbce7071473104f4d5', '2018-05-13 15:23:42', '2018-05-13 15:23:42', 'GbuYig1eL9vcAyH2R2JQhw==', '{\"openId\":\"oodE24-NCvx93St4_5w35KUe9Fek\",\"nickName\":\"行走的耳朵\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Dongguan\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/KyC2icBhcbibeXtx5QIV5DzICcvTTFaj417sIdYozYAibgFEPTDI203MsvNWjfkLS1UOb6BPsCEYhhpSAaiaghUibCg/132\",\"watermark\":{\"timestamp\":1526225018,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24-qVk9InEWRSSSje9N6vtxc', '88b68a27-1d12-4864-ab24-185f727856c8', '5809191d039f35bebca29d4f7282593daa0c889f', '2018-05-13 13:18:49', '2018-05-13 13:18:49', 'p6bc/a4r2FDnfN/f0tsJ0w==', '{\"openId\":\"oodE24-qVk9InEWRSSSje9N6vtxc\",\"nickName\":\"红豆📖\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Changde\",\"province\":\"Hunan\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI1VrPs7GTnFSzVyPU9We8ptia41LOoXILzaHKHPyG0TynDZdrI7vsGkiaBmnakglr1Z5NSFw1J3MAQ/132\",\"watermark\":{\"timestamp\":1526217526,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24-qZk_Sx5XHC3DNVj4XKr-E', '59c00c36-113c-4af9-8e37-430add7fbd75', '11626c2f9819ccaca7b5fc630916407db121a088', '2018-05-13 03:12:21', '2018-05-13 03:12:21', 'c0NzpAWkp2/bESaL2mqWfQ==', '{\"openId\":\"oodE24-qZk_Sx5XHC3DNVj4XKr-E\",\"nickName\":\"浩浩-Alan\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/GPLUa1IFLd55cgNZu4taepRxvZEHhLdazfw9ZYcNOgu9iaFExAFLVW73n461fcVvWcmIWgEDjA53wEJ09PbpHnA/132\",\"watermark\":{\"timestamp\":1526181138,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24-V4PtTA9E61Em2UuTMyZW8', '955b058d-42f1-49b7-a2f7-ce2917e7e6ea', '7135eb78686303f6fc5522418360ee6f496b9355', '2018-05-10 13:15:49', '2018-05-10 13:15:49', 'oWQUUSg89hSqSWPMvFWbtg==', '{\"openId\":\"oodE24-V4PtTA9E61Em2UuTMyZW8\",\"nickName\":\"立升净水-谢东军\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/8ibtvaTiaunnh2cESdcONibLKWJLEN7FpGVLEFg9J8TBIcnrCjd4iaaM2NSS8dV5HkpIbQW5dTw3qpfvqqbY6icmEIg/132\",\"watermark\":{\"timestamp\":1525958147,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24-Yn5GldlQDgjIAyJKA6eFo', '5e3c4f55-d096-476e-b66f-ae84556a0d0b', 'd874e71bf481d7494e2867e33042f9bbd0f03133', '2018-05-13 13:05:11', '2018-05-13 13:05:11', 'di4kuVaLcj/aFRpLK1o/gg==', '{\"openId\":\"oodE24-Yn5GldlQDgjIAyJKA6eFo\",\"nickName\":\"cmr\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"Jieyang\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/BSfP5yT5l6n8mvx5562k1ibPdNb2Djj9eibKuib4JzAeu1RCJA3Ob4Kbvic5XUVVZlbxwjRbJiauaa2unb4cOgZSwQw/132\",\"watermark\":{\"timestamp\":1526216709,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE240_WAX67L4yYTir-4F0EpIM', '06f59377-ffe0-409a-8e59-433d30c1687a', '1827325f716543ffbe6001e4fc225658787b1ff0', '2018-05-11 11:39:46', '2018-05-11 11:39:46', 'bU24JdsiQ1au2LNKPMEsTw==', '{\"openId\":\"oodE240_WAX67L4yYTir-4F0EpIM\",\"nickName\":\"钟敏婷Christine\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/1R7lHGBvwPQD5VHFs1dhcp0zWgJ10asfBadjFTibBqOy26TC776TjYK2EKXJeB5GHjs2bgczGXtdIdSiaUYPx1zQ/132\",\"watermark\":{\"timestamp\":1526038785,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE240FKxLoCIhtcnzbhcn4FskY', 'b8ced3d6-7714-40d2-89ed-904576f9ed1a', '84aabb77a89435ec673e8bd90816b82bf8271c15', '2018-05-12 11:03:32', '2018-05-12 11:03:32', 'OSIYjideJyDbYLXsvHZuUg==', '{\"openId\":\"oodE240FKxLoCIhtcnzbhcn4FskY\",\"nickName\":\"大胖\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Baoding\",\"province\":\"Hebei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJ8L1ibW3zI9slX9wyjEKCgOLMc7MNch5ud0qtBhicGvsQELLonLfcMs1zqYtl4doj5AZzkeYj7Nkzg/132\",\"watermark\":{\"timestamp\":1526123010,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE240k_-RRQLKZC958JduZBj-Q', 'ac0dd5af-9518-4514-ab47-0d9b4fe669c1', '22d6a6486fd591c633143d96d678b415f1035fab', '2018-05-11 13:12:12', '2018-05-11 13:12:12', 'kwruP4leEVWg1eaJP2PioA==', '{\"openId\":\"oodE240k_-RRQLKZC958JduZBj-Q\",\"nickName\":\"水瓶座\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Xi\'an\",\"province\":\"Shaanxi\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/kYjBzBA99QWNmXpU0gRxIAyoJuwkyF4QZXEIPNuXOAwXb9PEeXY9sOf6fUDGAX3f1hOpRbZrLyoECdx1vCXiaUg/132\",\"watermark\":{\"timestamp\":1526044325,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE240QoAfITCARm0JM7e-TBJx0', '82617ffd-6986-4c33-b297-dbcfcb8db4ea', 'c0ab24886f3ede8ac3a68bef3cb14d8016abf921', '2018-05-13 12:38:48', '2018-05-13 12:38:48', 'NmzIBH2S3wuwutzX9BV+8w==', '{\"openId\":\"oodE240QoAfITCARm0JM7e-TBJx0\",\"nickName\":\"林燕\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/2lOPst5oIVxOrwgB4wh94yoIKXMhCAzXKJnMcHTicVO2EkMQsfXEaC3qtyTXG8q6viaJWfCZ3ic7TN2DUyj3iaWL9g/132\",\"watermark\":{\"timestamp\":1526215126,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE240wf_ABPfldbaNzkrUBBc14', 'ff48d258-9a26-4f0c-8808-ee03a7b798ab', '573d3dfea6ebdcf869d05de3f9c808d7a515a103', '2018-05-10 02:14:40', '2018-05-10 02:14:40', 'ck4MiDu96zml9LMkcdatjw==', '{\"openId\":\"oodE240wf_ABPfldbaNzkrUBBc14\",\"nickName\":\"静\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Xiamen\",\"province\":\"Fujian\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIQYvSic4Q0E5klRJcJyicA5T9kILzN75ibKWQ33vILam4gXp0JUaia3wichrJCvMdD6jo0pRlFOicddmNQ/132\",\"watermark\":{\"timestamp\":1525918478,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE241JQOtIUM_H14rSPW_gcpRw', '23d0f352-0054-4ac6-9b00-303b04e1f0cb', 'd44c73a1d07d33ab50e5cd89159793b4fc31d165', '2018-05-13 05:26:27', '2018-05-13 05:26:27', '+m0APf6r84pnGqREq4Qiqw==', '{\"openId\":\"oodE241JQOtIUM_H14rSPW_gcpRw\",\"nickName\":\"肖桂林-Robert·Xiao\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/jjXHibn5UB6oSZNngzMS9qdyKCtIfBYWJLvu9HFuSAk0uI5adb230PEFy5qPlXvKg5sTZrNxRI465B7UL1MEFnA/132\",\"watermark\":{\"timestamp\":1526189183,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE241KFCZnkhU6BEJqXkKMW-Yc', 'bd57e6d6-9f85-4e7a-87fa-da41cd6fbc0b', '88d4417499a2392ef5b3e8c484ddc4e5e1b25187', '2018-05-11 01:07:57', '2018-05-11 01:07:57', 'KCl2k2qL93oixY47CKWuUA==', '{\"openId\":\"oodE241KFCZnkhU6BEJqXkKMW-Yc\",\"nickName\":\"亚齐\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/pROz1e136G1m2TMYgdKWfdBEFoXYWqDkJFZZ60E4Q0Sw0EBxW55TBaFuTziaC3epGQlF0kicRbkbNicDCQkgrUE8w/132\",\"watermark\":{\"timestamp\":1526000875,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE241lm6vx8nI2sD9r6uRpi9cE', '97776152-424b-40c9-a774-2802387fc921', '3dcf0e0ccb0b074a34597777b6c764225e1dbdf9', '2018-05-13 12:56:32', '2018-05-13 12:56:32', 'ig9YrjAMXml1x7PkP8tpyw==', '{\"openId\":\"oodE241lm6vx8nI2sD9r6uRpi9cE\",\"nickName\":\"邱红权\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shapingba\",\"province\":\"Chongqing\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLGVmP3ebbicBo4ia3L3ICLPgf4JClrHjKfOx9ovibEFvaiasjPfC19FaR7WA23Ap4vacoXgkhbSYbjDg/132\",\"watermark\":{\"timestamp\":1526216188,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE241pZR_y2ClW8gw7bI1HcsBs', '42288d6c-6c13-40be-abe1-b3b610faf724', '2fa36213f2409ef384b11f48c6b493c0ec8cd7da', '2018-05-13 12:30:41', '2018-05-13 12:30:41', 'tuuKkekMRTOTN7JLeQpqtA==', '{\"openId\":\"oodE241pZR_y2ClW8gw7bI1HcsBs\",\"nickName\":\"胡梦甜\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIeDhRRwchLSkQ5XhZ3FbcEAuKZFNvEuiczLg5t1CHPfAI7TRWtpjiadcPJ9twH6LckLoJWEricQgllg/132\",\"watermark\":{\"timestamp\":1526214640,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE241T4xYO-qusmLaoOHTNU50o', '647bc87c-1c63-442e-9f18-ad345a9f3f2c', '279921c40e0131f5ae1b5c8407c13e686cc7a1b0', '2018-05-10 13:15:48', '2018-05-10 13:15:48', 'StBzc3uNPiT2bxe1P9cZyw==', '{\"openId\":\"oodE241T4xYO-qusmLaoOHTNU50o\",\"nickName\":\"Nelson龚纪华·深圳\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"Marshall Islands\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/M8qibo6yichwB4jBWriauOicw3A1ibegFETKYpv5u7icgTxWCNtd8f7icvO92XfdSKiclletS5le6kRFibzRQgDmhXciazcA/132\",\"watermark\":{\"timestamp\":1525958146,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE2425f3mVNVD061s7C-0Ov4sQ', 'ba3d4c05-cf46-4d12-bb1e-6bcb7a792ed5', '165a10d0e36025d8afab6169c6d41fba1d56be1e', '2018-05-13 12:50:11', '2018-05-13 12:50:11', '0vGTwMFBKVsVdW36GVuP8Q==', '{\"openId\":\"oodE2425f3mVNVD061s7C-0Ov4sQ\",\"nickName\":\"刘静萍 Nancy\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Gd2GUC7VhUOgqsPmyaM95PWTYJNiaFK5xCc98su2eibjHTsTv4ia9qSPZ2oZ9ZbTibtIc91IJJ4bsxKA7TmA55DicOA/132\",\"watermark\":{\"timestamp\":1526215809,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', '634f6916-a452-4f71-9af3-26b64478229c', 'f888abed80130efe698743a176df889d3485dfe3', '2018-05-15 04:36:12', '2018-05-15 04:36:12', 'kjkEOL0nhe1r9qKtXNabGg==', '{\"openId\":\"oodE2426KLvEqSsz-Q1qQpXFNAlA\",\"nickName\":\"Jenny Liu\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/WlAWkmS5vVKV9RpicL5iciaBmTic7yp8om7xr4Z96zOm4kFD8iajWwUFDmBnDX5aRjOsmHxrpza8J4ZXqRv9p14yGiaw/132\",\"watermark\":{\"timestamp\":1526358971,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE242cTnOu0Y25ck-p8F2s05Mg', '022f6a80-1720-481e-aede-075ddd16d042', '41bcef314dec08fbca186a5705a10ed6597ad013', '2018-05-13 15:12:55', '2018-05-13 15:12:55', 'vPcpo+qNJielES0Uj6Hb3w==', '{\"openId\":\"oodE242cTnOu0Y25ck-p8F2s05Mg\",\"nickName\":\"阿哲\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/TmXRGRVvfTKOm0WqGlTmUmvklFKbNZX9lJfeZv8xZR5Il9icS5ibSZ2lP6trE5PrvBsib3lRXbQosUIZuVtD7v6GQ/132\",\"watermark\":{\"timestamp\":1526224373,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE242dihh5HHRVR-x-DhwpXZOw', '22777dc8-5997-4575-a601-fecd2a330de2', '00de01a4976c625d8db59e1baf519e6b0bdef87b', '2018-05-12 13:04:56', '2018-05-12 13:04:56', '9MAq/vAEG5NZF/t0aZoT1Q==', '{\"openId\":\"oodE242dihh5HHRVR-x-DhwpXZOw\",\"nickName\":\"licky\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Dongguan\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/JGx4zOvrFT9e1txHjBhcoziaBrytCf4z9rb8ibH9O5RvAdZDg5NwRa2K7rtTBQj1u7rI9mrlI4pSZBZ6wnlQRPWQ/132\",\"watermark\":{\"timestamp\":1526130295,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE242i9LkSk6djxeiHMfMOLJH4', '46f5a9a3-fb1f-488f-a741-b5030970ef6a', 'c8fc3143f6281a560c666103b6a89c1716df2b5d', '2018-05-10 15:08:13', '2018-05-10 15:08:13', '6KBxMVXRpmekogduMclTAw==', '{\"openId\":\"oodE242i9LkSk6djxeiHMfMOLJH4\",\"nickName\":\"渠承KarlQu 🐮🐄🐃🐂\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/CY1EYB3RGicpcoD4g4yKw3qHvHh3CCXibdQpicO1KfibZclNMocgsojyh7W1DSibMw7hPiaMKbEu0g9sbdAibElqh7gFg/132\",\"watermark\":{\"timestamp\":1525964892,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE242jbCKbihY8bRx07R1W4cg8', 'd8196139-ce8d-4f44-b461-5a521f4da8c1', 'cb7200f2c799861cc737921e4413356dd4b2261b', '2018-05-12 13:00:20', '2018-05-12 13:00:20', '0sRj2SSVta1XdgX/WVBfHQ==', '{\"openId\":\"oodE242jbCKbihY8bRx07R1W4cg8\",\"nickName\":\"杨威(Thomas)\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Guangzhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/e7c13icBibvfapwUGW539A1XXHo47p98VgEJXHHaz0ojhW629npVkxX4D6ZBz35iaY1CYpSq4CiaibITE7GCEoNO1hw/132\",\"watermark\":{\"timestamp\":1526130018,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE242sh8Tr5fDLEbOPnPXbSoy0', '0fcc26c8-07bb-463b-9a25-2ef81cfbd0c6', '500c700ef043a335f9e8b205fbed5261e08ea696', '2018-05-13 13:04:57', '2018-05-13 13:04:57', '5PvyhlZcRfbJY2/Gj069Fg==', '{\"openId\":\"oodE242sh8Tr5fDLEbOPnPXbSoy0\",\"nickName\":\"jason\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Guangzhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/G4xSichm2PrcKA8DAyprGckLYMMgbxpRHicnibaUHyeOWy34XQcQ8R3gXBQI6lUibmib2J46DzKF3cw4P4G4mEH5RKw/132\",\"watermark\":{\"timestamp\":1526216695,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE243000rAyclRpkJyaQ7J5zfY', '18852b3b-c8a2-4526-8019-576f106a8d75', '4099f140b9f7f042927b8d966d23816f02071853', '2018-05-13 04:45:40', '2018-05-13 04:45:40', 'EYVyx2G4h+7RrOXPI82OiQ==', '{\"openId\":\"oodE243000rAyclRpkJyaQ7J5zfY\",\"nickName\":\"Gino-邬\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/732FuNXwluII3fGzYJMX3MRia4COkC1Xibqq6JibGlFNUTicRTCLGicl8uvUltWxOBA3E1Xf9ELQrZicAOicib1eq7bmOw/132\",\"watermark\":{\"timestamp\":1526186728,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE2431IM7EEMfAOMlUJptpKMuU', '3d82ab4e-cc93-41ef-a2c7-1ee9a1e3e29d', 'e141cb089782f210eea1121de7fbbcfa0566940e', '2018-05-12 14:31:58', '2018-05-12 14:31:58', '98X2BfRAbYH4P4Uxd2VFOQ==', '{\"openId\":\"oodE2431IM7EEMfAOMlUJptpKMuU\",\"nickName\":\"tony.yu余华\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epHZClIgbT915MmsrKkJBtsK2K9WCvFcFpuMzBBNyguXCcc3upP381q7umLTNpwLJibfiboTJHJLf3A/132\",\"watermark\":{\"timestamp\":1526135514,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE243bwM6ZBLHOG4uneU06sw2Y', '51366a9c-0a29-411e-9782-bae6ebf1c5ce', 'd888d9c48a8e523c098708218039e92295a85fda', '2018-05-12 14:54:09', '2018-05-12 14:54:09', 'EtDZEMBi77akw3lBXXzsIw==', '{\"openId\":\"oodE243bwM6ZBLHOG4uneU06sw2Y\",\"nickName\":\"Jennifer\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"Iceland\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/gxgbqkPNL4Cm5oicWAY5C8eFcVo7HRePa7TUo8oH3HIgdBKOdK12HatVRIibDJ7vg1WDT1liaxaOib1hzMV8W2kgxg/132\",\"watermark\":{\"timestamp\":1526136847,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE243E3pcCqg5fgXqkT50wi2WE', '2efd1c4b-d327-4794-b9a1-63cfa43abafb', '25294da4f8c4b4e095ab1c604ee0ce2ebe5587f9', '2018-05-12 11:07:43', '2018-05-12 11:07:43', 'QX4B9pbZ7pqpFQhF+qVljQ==', '{\"openId\":\"oodE243E3pcCqg5fgXqkT50wi2WE\",\"nickName\":\"秋\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"Finland\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/ugkic6AGMVtunGCo8EMBxAnEicjOx5ob2kqbtV6DAhaT7VjKTo9Gy4YX7gRDe4jtbKPibQXWBW1Oyjkv4ewICDydQ/132\",\"watermark\":{\"timestamp\":1526123261,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE244_PV3RkkGJf5E0QQ7jOQpg', '281ef3b4-7f85-493f-974b-72da92c8eafa', '87284a540865a4d6625de0858672b6198ed9043e', '2018-05-13 13:08:54', '2018-05-13 13:08:54', 'RnY4kIcCZqiKXHopf3rf5w==', '{\"openId\":\"oodE244_PV3RkkGJf5E0QQ7jOQpg\",\"nickName\":\"Cora\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Changsha\",\"province\":\"Hunan\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/UJ46eDfFzhVTib1h1Ew61VcEMLiaKOia9kFgIrZ9e7jxfA5qxRcJz4FIBqwHQMibctoNqGf8pHrRGYiaetMvWKg4vsA/132\",\"watermark\":{\"timestamp\":1526216933,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE2446_2S2sXsh2o2Y8CbtGlxQ', '33df4767-833b-463f-8708-258015df174f', 'a7afa850c7041a0fa53c72086052c11568555e6e', '2018-05-10 13:03:36', '2018-05-10 13:03:36', 'CnDwOfEeNvkGzeEyBR8/tA==', '{\"openId\":\"oodE2446_2S2sXsh2o2Y8CbtGlxQ\",\"nickName\":\"红色蓝色\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIEwEUHFK3txStl2kdSUJ9AaPE1tbQbOWBfY6h9PLylAPEc1gdCP3lDia6zc3uv9F6AiaNBHTf85p8g/132\",\"watermark\":{\"timestamp\":1525957415,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE244b_I7UF1I6sAWP8Ncgd9os', 'cb437d18-600a-4a01-a8f7-dafc6956a264', 'dabd4e5f47b6e78b3f6907b3469502eb35b1dee7', '2018-05-13 14:21:49', '2018-05-13 14:21:49', 'yTPtJlJfuxiEH/ItHOlGMw==', '{\"openId\":\"oodE244b_I7UF1I6sAWP8Ncgd9os\",\"nickName\":\"阿梅\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"Guangzhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/UNC7eWZWvRyicwVDBvhCTzb4p15FUxAGSUbYCzStYmpdfZd8QWUg9cicJ4EfN72sXLoPUgpMiaBeLicLAsUfoGHZrQ/132\",\"watermark\":{\"timestamp\":1526221307,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE244BkuQ6_p92zLMWX8JwZAV8', 'faa138ed-be49-42ef-8936-265c4ee9f030', 'd8052e9047ea3c358b15e85053bf1533d2359306', '2018-05-10 13:16:32', '2018-05-10 13:16:32', 'ecswcGnBdZUfxK/NZB1KsQ==', '{\"openId\":\"oodE244BkuQ6_p92zLMWX8JwZAV8\",\"nickName\":\"馨月\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLBHy0D2KUZwEYtAkW0L9ibsqEKHSnzSs5kyibJjJrZxJsfV2VbremlMuTTwDXVwiaGJMWAYOrmY6R1A/132\",\"watermark\":{\"timestamp\":1525958190,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE244cmB2Gs3Qlp7ovpt_bNlKM', 'c4d20fd1-2a7e-4342-9afa-b6fbe80323c6', 'a5b19c95fc5b61b0ace588a545ad599e0a1b4ce6', '2018-05-12 14:03:25', '2018-05-12 14:03:25', 'UZru4FsCXPdNRGXzi926mQ==', '{\"openId\":\"oodE244cmB2Gs3Qlp7ovpt_bNlKM\",\"nickName\":\"L玉雯的雯\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/OSxtLCgwVBicCDGllLwNVHQW8QlGb6pcd0vWuSoP5wReE49Gm3c4enGvLAo7mZc50um08CtcgU53jw4qwPnbyPQ/132\",\"watermark\":{\"timestamp\":1526133803,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE244eg6quSU0i4IexKzLRIRPY', 'd4b22009-89e2-4a85-8cb1-4ea09fe6973f', 'f1bf5edd10ad6ec0af47769bd6ee7f09f2e0f05a', '2018-05-13 06:38:40', '2018-05-13 06:38:40', 'W82wwOIIK2RVKdbpzLSOBg==', '{\"openId\":\"oodE244eg6quSU0i4IexKzLRIRPY\",\"nickName\":\"Fannie & 彭思民\",\"gender\":2,\"language\":\"en\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/ZR0rOQaMjM8zlibf5HTCQYsRyqSojTZXhuJAmpWR7xsomiaibI2r4lIHoo3WzVsGglRS5g2lLWj6L5iamibibaEAW3Qg/132\",\"watermark\":{\"timestamp\":1526193518,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE244wADUiyy3aS2cdOAMAweoM', '9f4a5031-e404-4832-8471-7d7f71f5f751', '335fcccc8ee5b5fbee567499c48ff5c14bec3325', '2018-05-11 13:35:28', '2018-05-11 13:35:28', '5vSy9hBwEeEAQeZ9mdBIhg==', '{\"openId\":\"oodE244wADUiyy3aS2cdOAMAweoM\",\"nickName\":\"爱欣\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/u8uXvwMnXWlamwwMiaGDPjBCibxkibic3rKkhuA99yc09icWomomk78OUibSN391YLvsNbriblOoia9XKyWlczibJcqnpJQ/132\",\"watermark\":{\"timestamp\":1526045726,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE244WfcWaQMDW1lWpDveVIkr8', '46522d9d-ff0b-4316-9c04-0ab6637b7a6f', '781cea910371b87e18ba56ef0b73929cb6f27cb0', '2018-05-12 13:26:12', '2018-05-12 13:26:12', '5vfRv+NMgQUSTIh1kq8WZA==', '{\"openId\":\"oodE244WfcWaQMDW1lWpDveVIkr8\",\"nickName\":\"Jenny 谢璞\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/fEIYRCQO0LS8fYIm7s6VsAZqID2fXJKgS9pjEzh4RL5ZVrsyjfiajrZ6uGd6RXRU10kbibNibiaica9wnsaUhRPBhng/132\",\"watermark\":{\"timestamp\":1526131571,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE244xb6DMsjK6o-0bLIfiCNYI', 'e035dce5-87cd-41a2-b3d3-0b3aa476456a', '43d662368f796413c918a01a76e7348973c67912', '2018-05-12 10:57:21', '2018-05-12 10:57:21', 'fRiV3j7ufESqxk/LM4wbaQ==', '{\"openId\":\"oodE244xb6DMsjK6o-0bLIfiCNYI\",\"nickName\":\"光辉岁月\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Yichun\",\"province\":\"Jiangxi\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/MCIezKMgkTu3fXOJeDI5Bke3ID4bricRfoawE9u9QzKPL0KmZowZ2GLBsqU0X0Mk1Qe2fsVvGWQHiaTzbPwiaSHHg/132\",\"watermark\":{\"timestamp\":1526122640,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE2453Wmjn8UdgqAGxDQ-LisrY', 'a05b639b-7420-4d95-9bd6-87d4f1eae5b1', '0d8d8988c6b53d04c3f7e2d020d13dc068b70666', '2018-05-12 13:07:45', '2018-05-12 13:07:45', 'w1JNKrkbbzIDJLM+vxiAFg==', '{\"openId\":\"oodE2453Wmjn8UdgqAGxDQ-LisrY\",\"nickName\":\"alva.hao\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Yangzhou\",\"province\":\"Jiangsu\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIia0fW7NxIzMEHADV5u1Lbq2VC88rvQqeAHc77e2CNkricuvZwFSNeZPTKURFpxHOOJCvFsfoiaT7EQ/132\",\"watermark\":{\"timestamp\":1526130463,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE245BKxqphweRi3ESOc9KHxRM', 'e4914714-4b2a-4567-8a5b-7d5f379910fb', '0b39ee826fdb31e753a9ec20438e92eb1f9d9fd5', '2018-05-13 16:35:57', '2018-05-13 16:35:57', 'koB4uYXY8iSNMNvcOMLS7g==', '{\"openId\":\"oodE245BKxqphweRi3ESOc9KHxRM\",\"nickName\":\"💓超越💗完美💓\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Chaozhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/p7Q4GfjlRtnUicXqAj73NXmtibteW7yYsTcUI5QqH7SCP6X84ww2uTo0re74vOtq4hnhDgv2kp1psvG2y8F6bhBA/132\",\"watermark\":{\"timestamp\":1526229356,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE245N8LBvC0sRYoz9HYcSqsEU', 'cfcf1a97-ef43-4e76-90e5-5e1812dc9061', '67cff278376a2a3858aa47491471bd8269900b46', '2018-05-10 13:54:43', '2018-05-10 13:54:43', 'exeXxZuQlcSgsCMvw7l1SQ==', '{\"openId\":\"oodE245N8LBvC0sRYoz9HYcSqsEU\",\"nickName\":\"Vernon\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Guangzhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJnicqbcGlv9JQMNy7H46PNT1LU1jsegPNxQaZHoYuoZwvAPHI1mQ4YnaCZJOhibhIlxC5e7MD4bJGw/132\",\"watermark\":{\"timestamp\":1525960481,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE245QlXqmXIghCXwAlZl9aiJg', 'ed0ab769-5826-4e9e-865f-a3c3a731b9fd', '5ddaf4aa1ef9fe1f7beab151a2117033af361cee', '2018-05-12 14:48:10', '2018-05-12 14:48:10', 'kJcgvdFYWKXvZ30goCtODA==', '{\"openId\":\"oodE245QlXqmXIghCXwAlZl9aiJg\",\"nickName\":\"陈利清\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/UpoqJicx4ghj7icX05HfurMDtO1YYSThCXTfqjrt5oTicQglYrV9CIJJOoOR7lb4df1d4JOeVcEdvSxtHKIIiaHmbQ/132\",\"watermark\":{\"timestamp\":1526136488,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE245tpxdouyL9TZhQSt7jEruo', 'c4a7e211-77c5-48c4-a135-0a6b77a5dfcf', '3c7c1c3d0d46ad9506e0187cce505adee367f5a3', '2018-05-13 12:03:57', '2018-05-13 12:03:57', 'v7qpsjK26XP6B8s1T9rh7g==', '{\"openId\":\"oodE245tpxdouyL9TZhQSt7jEruo\",\"nickName\":\"Nancy\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Ayx9kRI4JhzoLI5PZic2bvyG8urmfu1dpXXlEwgKTh7uucUzia5UgvOuC8dX60An7eCibDsz2lKKx1Z0CmZgNXsYA/132\",\"watermark\":{\"timestamp\":1526213031,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE246BD0WE1GH1stbbEubbdGC4', 'd0843813-4a86-4995-928f-21010043be69', '50b8e205503dd26be66b8382feeb27b1318a2d1f', '2018-05-11 11:35:21', '2018-05-11 11:35:21', 'Rhjq8vW+oK0uUbMlckYl4g==', '{\"openId\":\"oodE246BD0WE1GH1stbbEubbdGC4\",\"nickName\":\"Amy^廖敏^\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/xPiaENfelgFdWCVPNUMCiaAL92ZiaPXfRs433Nor61ruxpC5C4OG4QMVUnOXmhYNWVaH3IVYiatzjrZLaIdQskKMibg/132\",\"watermark\":{\"timestamp\":1526038519,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE246eooRLKYFY4w_PlsKX-xDE', '86bb382b-2a51-488e-9e7e-2526ad68b00d', 'cfcf84784a2b312b061f60f9a19becbee8f81276', '2018-05-11 10:33:53', '2018-05-11 10:33:53', 'OPnnnBaMsBwSJJ90NmMuUA==', '{\"openId\":\"oodE246eooRLKYFY4w_PlsKX-xDE\",\"nickName\":\"歌可赫\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLMA22ZFCTQicur95Pt8vKj7R4bLtWcXibpYeb76NYq28icGXKbGGW17M92cibsREAoYoOsgBDe4czzdQ/132\",\"watermark\":{\"timestamp\":1526034831,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE246jcFqEfyLa3w_stw5dsw84', '0cc0d729-1015-4630-b73b-5cf29488e425', '8f9ad48a68dcbf14c9d5e426eb1b666871f181b3', '2018-05-13 06:02:20', '2018-05-13 06:02:20', 'BJjscEBXbIQWh+Hw7Gs8YA==', '{\"openId\":\"oodE246jcFqEfyLa3w_stw5dsw84\",\"nickName\":\"Michael Su\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/uSYpqJrcJ3lImxvnp067ZQTMV2VTyOuUcicgX9JTLv3TKqPicibSsLOLcSXd9dOPXI8rQAT5wlqTn6eQKWoibLwkTg/132\",\"watermark\":{\"timestamp\":1526191338,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE246UdIFWIvFTk-Mmvl1pD8OE', 'acfd35d3-94c6-4d81-9de0-8fa95eac0971', '12ff200f85ac3b4a39d6f431c74d44a52814b68e', '2018-05-13 04:56:35', '2018-05-13 04:56:35', 'GPebX+I5waFRKhiZiDmuLg==', '{\"openId\":\"oodE246UdIFWIvFTk-Mmvl1pD8OE\",\"nickName\":\"Howe\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/jgXqmpon8SCfqQcCia6cmibfsM3OvR8R2vhXsG3jOUJPhl6wzCicdQL4gto8PXXqoq1ibCico9P6LibWpicsKDD3lGzUQ/132\",\"watermark\":{\"timestamp\":1526187391,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE246VL4AK7Y1H8fcUlOquXmVc', 'f29cb679-ba1d-4be3-adfe-9d3ecc690444', 'd3e1b6fc3c7fff90ad484b3537078d2fc0a4f44e', '2018-05-11 12:27:28', '2018-05-11 12:27:28', 'OIgn4ulPaQYfWmdBZOnxow==', '{\"openId\":\"oodE246VL4AK7Y1H8fcUlOquXmVc\",\"nickName\":\"-Lilian\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/sfsibScHo74eVAYbDRUZTYdZ1e3pF0DvHiaWM3EMz8R9kMAZSH2FfxibJ3CiaIwicFkicIIMWYGbfLBqpFdIUMYnVib4g/132\",\"watermark\":{\"timestamp\":1526041647,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE246xbtKLsuXcgVKrzcw9YRBQ', '5822452a-cc20-4bb6-9649-8f993e18a8c6', 'd6fefc6f18c0c3398f748c0b68dafebc51a5aff2', '2018-05-12 11:06:36', '2018-05-12 11:06:36', 'pQOZRpuhhhG/Rq+1uAenxQ==', '{\"openId\":\"oodE246xbtKLsuXcgVKrzcw9YRBQ\",\"nickName\":\"魏志姣\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Hfo7LLwqZKw8p3zhlAsJjYtUZMa4gYI1J7E6Pj4ATwZuRN99icibaTaDibgeKb8XuaNXhh1XBKiaYIVeAcsGGbyDEA/132\",\"watermark\":{\"timestamp\":1526123184,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE2479hiJZKKbx6lItUQHhefQc', '212bcd35-214c-45ec-9410-201c6b64c037', '7689184a047a12cc7738edacd63dfaae05cdf31f', '2018-05-12 12:01:43', '2018-05-12 12:01:43', 'noVHWv2N/uNLxekDLJtjiQ==', '{\"openId\":\"oodE2479hiJZKKbx6lItUQHhefQc\",\"nickName\":\"毕\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/gl2NbuicUs1PP3H2ly9CgYkBDAhWpI1YyDoeyaqes8Rss5uYtjWvo5hMupEibETsh8ibO4DtjrIS7GqADAkvZhCeQ/132\",\"watermark\":{\"timestamp\":1526126502,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE247cT-Zo0DDAalSuxI4J4Yn8', '3d988893-e3be-4181-8107-20b676d0677b', 'f29bab889659ad9da5707a9a60d3701264c27ff7', '2018-05-10 15:35:29', '2018-05-10 15:35:29', 'AsVuW7I2lsvDSrv2sp26PA==', '{\"openId\":\"oodE247cT-Zo0DDAalSuxI4J4Yn8\",\"nickName\":\"🌙笑笑\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Chaoyang\",\"province\":\"Beijing\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/95Xn9fWfu9lK7j8N3C51OYiclrnPWjzwZgWm9O3OZl87SVETicqAY1F8zbylXqryicyEWxlW8cQIwWZeYibJECXh4g/132\",\"watermark\":{\"timestamp\":1525966525,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE247IRfonMQ7_tZgIlXqJnwd0', '09954a1a-acaa-4d46-ad85-4f0faf11b3b6', 'c0c50527cfbdc49404d8c77c38c3de7ed6b40d80', '2018-05-10 15:08:52', '2018-05-10 15:08:52', 'aSeS5cgzXibXZJGSFLO33Q==', '{\"openId\":\"oodE247IRfonMQ7_tZgIlXqJnwd0\",\"nickName\":\"Robert Shao 邵辉\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Wv6QxUEPue1dDpVrFvxJRW5ib5MFvgaWErov498tSWK2CgiawIGTibNG6xMjXXiaPC3ribeT3dFpibgrNbPEueChdHvw/132\",\"watermark\":{\"timestamp\":1525964931,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE247O2k-iC4YbF04SZp7pfOoo', '90a00c58-3710-4833-88a3-e89aef1e2046', '565e48251eebb6a9ce8c8569b12090aeef1343b7', '2018-05-10 12:06:09', '2018-05-10 12:06:09', 'THDPA9aQy3yeni3E1dGk7w==', '{\"openId\":\"oodE247O2k-iC4YbF04SZp7pfOoo\",\"nickName\":\"小眼睛👀\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/JibMaMdpOu787ia50nJWddE10UhOibZvWw79OdVa1icg7fp4UrnsSfqAMT2Prud4sbCh9eEAgV3CkK2W2sIfGpCgJg/132\",\"watermark\":{\"timestamp\":1525953966,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE2488fzUwZ8KZyvCeTGBsvXfY', 'e2a5d577-4a29-4b83-92a7-06f5a74e26cc', '76db81b3b87c23fc84455d234b539bf8b3815686', '2018-05-12 11:17:12', '2018-05-12 11:17:12', 'MKbZctpRMw0TRlrDQbu44w==', '{\"openId\":\"oodE2488fzUwZ8KZyvCeTGBsvXfY\",\"nickName\":\"林杭🌿\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/YqGTBtUadRCyAjNxibgWH5fJYfpjgzCzHMa5jjpROc324x4lDPlzhEnb6PnnDzugoiajCktRIVZb7M3oY5H9WWrg/132\",\"watermark\":{\"timestamp\":1526123827,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24899gglDHjzwdT9_eUEqpBU', '54e7156e-2c23-4fa9-a728-ca5b0f8732fe', '0f90332dcea480244e7c1e7b60aa6771d8e75462', '2018-05-14 13:00:43', '2018-05-14 13:00:43', 'xPpA+9aPOuAJWystUgy0Zg==', '{\"openId\":\"oodE24899gglDHjzwdT9_eUEqpBU\",\"nickName\":\"佩真\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/ibe61s70D8qGhH2PsSzJWR57IJG8t0zicEGBYJ1wgvicQfn6jTFmgiaCQicHfchaLXgk7eVsDQj56fvbxp7O5gYib4gw/132\",\"watermark\":{\"timestamp\":1526302842,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE248eP-Y1r8VAWg_VjvpjnqYs', '907bc27b-c8c0-473d-a543-16d4db443302', '5cd48e292e5b6520a4a52f15b05ba89c90ad9446', '2018-05-11 12:44:34', '2018-05-11 12:44:34', 'fRBTrAU69bQini/6uw/FFw==', '{\"openId\":\"oodE248eP-Y1r8VAWg_VjvpjnqYs\",\"nickName\":\"静\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/kYfZ5WLNF6WQdK7dUianaNOpDiarNyVkR0XIUJgLcIcXn7y012DDnfHQdWsOLuC1AwhichI471U8Rn5GC6mQDiahlw/132\",\"watermark\":{\"timestamp\":1526042671,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE248GID68aJk8mLtO4Os5lerM', 'd60015cc-fc4f-4194-a825-455c9d0b9946', '79a816b07f6ca8d826d5fff95b2d3c9d6fbeb77e', '2018-05-15 05:39:53', '2018-05-15 05:39:53', '7M/oaPhR12n0swAXxHauCQ==', '{\"openId\":\"oodE248GID68aJk8mLtO4Os5lerM\",\"nickName\":\"风猫\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKnAXcMoGo6n8qBewbMwuP84SZXvp7ibJvmlALeMRrx7bGRrPE87giapTSsBwNffTfwssRtTA9ysfpw/132\",\"watermark\":{\"timestamp\":1526362791,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE248himxwuRjDDeaVqrZhMIe0', '2044cb95-6d54-48c7-962b-d24232f5ed3e', '03600a5361d4686b589125b8a9449fe9d6ffdfc1', '2018-05-13 02:42:22', '2018-05-13 02:42:22', '8bOCzW7XvsE8KvC8zHUmXw==', '{\"openId\":\"oodE248himxwuRjDDeaVqrZhMIe0\",\"nickName\":\"乐莉\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJzpJBJlOAWW4Mz2lnhmJZSBqgjaTTwpmZxN9tKgdTt58bgsy7j8Zwicygt0ZO3bMiaHFc4TKIzzksw/132\",\"watermark\":{\"timestamp\":1526179339,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE248iGhqQYEOCD7AhqQUNflTQ', '34bc6a9f-21a8-43cb-b8ca-40e2153e8415', 'de348cb9591172193f50106a8e918def8abb4be5', '2018-05-10 14:15:27', '2018-05-10 14:15:27', '7lYFObr1Ke+ocEy3KKqpbA==', '{\"openId\":\"oodE248iGhqQYEOCD7AhqQUNflTQ\",\"nickName\":\"Linda\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJYLctX549f5BeTIQfNTGoy1Mg4ibicA4e8yYdMPsrfnicpbO8a91vztIj8HJQSibIcFeIj4icg43WaClQ/132\",\"watermark\":{\"timestamp\":1525961724,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE248jwCXbBgL8gGnLylcYCqzs', '94a404df-8466-439e-8e6b-5aef999a1992', '86f03eab34fe9da803f561115e3a2997fcede6c0', '2018-05-12 11:06:45', '2018-05-12 11:06:45', '5h3kZTSekCnBgvoSezg2yw==', '{\"openId\":\"oodE248jwCXbBgL8gGnLylcYCqzs\",\"nickName\":\"陈建毅\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Guigang\",\"province\":\"Guangxi\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/2xoreZo0uefw1KBicw9W5nibyX8r57KKrrMEX09yEKXI9BiahLySaBXIJF2znMUZHFW8eocGdUPCRZfntjQibwLLFQ/132\",\"watermark\":{\"timestamp\":1526123203,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE248oea0pjk_ziWZKpKH0OGSk', '739307e3-f551-47fc-a31b-9c6b98fcaae0', '6feda1051293c9536572c09c49915a9ee3307ca6', '2018-05-13 06:25:18', '2018-05-13 06:25:18', 'j0B21XeEpY1RalJQ3f/ZMA==', '{\"openId\":\"oodE248oea0pjk_ziWZKpKH0OGSk\",\"nickName\":\"大公主宣容\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/zZYPYrCt6KzRtrLicicJftbJrtialcadxwr51M91maqFCv9zzc9F97RibicfWibkNOfhAF7C0vZH4E7kHYE1fNSXV2og/132\",\"watermark\":{\"timestamp\":1526192716,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE249jC2hIMvSmL_mLSkqcVd5c', 'd0e2cca4-8375-479a-9b9b-586e730ea078', '733c94f604a067ec627124b2cec6d22f232a14b1', '2018-05-13 17:43:39', '2018-05-13 17:43:39', 'bCKSj7025qk/GvJ0b/AMUg==', '{\"openId\":\"oodE249jC2hIMvSmL_mLSkqcVd5c\",\"nickName\":\"YOUJIE💋\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"Albania\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/GCIVlgR02cTGoVLicsKZFdyziac1jsET4fLDbj2sm9zSkPeqo3Q3lPm1C6fEQSJicrcQkJYib4O3PHk6ct5icTYxVqw/132\",\"watermark\":{\"timestamp\":1526233415,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE249KvKmBcOLTHNCSSBW7OdNY', '6955e454-1274-4c83-8ebf-2c1e8df4c3f8', 'ae93efeb1a142e0dc6a65b78f3b82b68d7f21c77', '2018-05-12 14:19:55', '2018-05-12 14:19:55', '95tuSBF44oG9MbanmluEog==', '{\"openId\":\"oodE249KvKmBcOLTHNCSSBW7OdNY\",\"nickName\":\"大众电影制片厂总经理 王伟\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/1BnibicDYM3RLImiaVCy5QviboHYRkXrzjpBm44TWMMj3p0gdPIxOTTicWD4toLibPm4W4dt3EjTQhndp5JO9RZUnD2A/132\",\"watermark\":{\"timestamp\":1526134793,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE249SlokrSDssCrg_A109MQbU', 'e0e735e8-0455-45b1-a883-e187ae8feeb1', 'fe1da1f2006ad7c0e2f9bfa4522c018181ebdc9a', '2018-05-11 00:57:55', '2018-05-11 00:57:55', 'nlWo1QUArWdTj35mg/JaGg==', '{\"openId\":\"oodE249SlokrSDssCrg_A109MQbU\",\"nickName\":\"雷彬彬～雷蕾\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqsgGEricElkvxQFUCpRJFOic4ibwAib5vE35OzS9aynCaHr44k9kG1zFb5GMvJOaD73GibF61GwRptJzQ/132\",\"watermark\":{\"timestamp\":1526000273,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE249Ywk29Z-YmsSAdT7pBqbJc', 'a912a6e6-3e12-47fb-9a91-90d5a8a7099e', 'ad73ad5340f5236fe032a4e095e15a154043064d', '2018-05-13 06:33:36', '2018-05-13 06:33:36', 'p41WeTEwpaOe2UBhWaD6Dg==', '{\"openId\":\"oodE249Ywk29Z-YmsSAdT7pBqbJc\",\"nickName\":\"大鹏\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/fF7icBE5ZFnve3Ozxw1q6JPjEa2b8ggee6ZXED8zVJTZVUibOSjicprDAoRSeQRbNzYGLxZw8HCkoCKsHImibiaZBuw/132\",\"watermark\":{\"timestamp\":1526193206,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24w6La7JooT6qr3y8Ku8xbps', 'a0db85bf-5c78-44a0-8ae6-ce7b3b4c1c4b', 'f0b0b76f51930764ef72d7d8bc1d4f190ba76c38', '2018-05-13 04:43:38', '2018-05-13 04:43:38', 'arFNu3r2ZcYUmpWAVnVdSg==', '{\"openId\":\"oodE24w6La7JooT6qr3y8Ku8xbps\",\"nickName\":\"营养师张俊\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLmaekeSdSQ8zYkriaRH352CoIfPZnkEiazb8NzuXRDpEMhXtJaGbuLdAz3IE4E9HoFficRGicRpuocPA/132\",\"watermark\":{\"timestamp\":1526186614,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24wFrajOAO5gwqV-FVSuSkyA', 'cfad7984-ff34-48fc-80ea-f0f4ba6eace7', 'b351ce30d2158a9eab44c7f6a005c377f9ade391', '2018-05-14 23:18:52', '2018-05-14 23:18:52', 's5yx8f/SozggnvA93J7BaA==', '{\"openId\":\"oodE24wFrajOAO5gwqV-FVSuSkyA\",\"nickName\":\"Coral Xie\",\"gender\":2,\"language\":\"en\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/vibBfZPicTeQwTdcFSxsCfic6lGaziageiaaNd4BY5CpFnJLg1OdUOB2ZYD5AicTiape6g0z2Vp2bLmdZUXiaRp7FrP09w/132\",\"watermark\":{\"timestamp\":1526339925,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24wSe8mbjeajGNhN4bKmjUEw', 'c280dcd0-b7f0-4e9a-b5e1-f605f00c24a2', '8a7435a6d2e4bd785ea27c6c41b77015df45540f', '2018-05-10 14:38:55', '2018-05-10 14:38:55', 'wSqpLaj93DVt2p3MJaF5+w==', '{\"openId\":\"oodE24wSe8mbjeajGNhN4bKmjUEw\",\"nickName\":\"study𡿨王丹凤〉13302916109\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Hobart\",\"province\":\"Tasmania\",\"country\":\"Australia\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/WWRoUhGS4lRDbia681Zp5g2XBkHC2icKCM197KmxpZCRicyYx3ZgDyfrJ1ibuVtPribPQpxVcaXdbWjWnKbB3Poic4Mg/132\",\"watermark\":{\"timestamp\":1525963132,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24wu-BxDuyYQD4ByKB6gJZFQ', 'f1f09dcd-3975-437d-a4a8-ff9a45a85ed7', '6e773d4afcf8e09d206c81d022793100b7e22a25', '2018-05-14 13:08:43', '2018-05-14 13:08:43', 'bEWqT1tU1KZA+1mNDYBanw==', '{\"openId\":\"oodE24wu-BxDuyYQD4ByKB6gJZFQ\",\"nickName\":\"Jasson\",\"gender\":1,\"language\":\"en\",\"city\":\"\",\"province\":\"Hallands\",\"country\":\"Sweden\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Uibnsu1iccjbRVcL1yUxpRcwibRoH8wsDr5QmzgrPwa5OVQPW3h1q64CyZLs2G8PFEcLbI7x1AxaSH1AFsp0eGNjw/132\",\"watermark\":{\"timestamp\":1526303322,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24wVIxup8-qbZPygwQ3BRq9E', '961ad318-dd80-45a3-b370-7fb881bcc15f', '2578b2fa327a5cf22d0507e678934964f412aed6', '2018-05-14 01:28:41', '2018-05-14 01:28:41', 'DxnVl0UF54LR2e9iTqM84w==', '{\"openId\":\"oodE24wVIxup8-qbZPygwQ3BRq9E\",\"nickName\":\"Trena-lv\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJGtG01ksyBtqKzE6A1P3bGzzialw1PUicS0s34a43ZyuKUhPYaEorxwLHjdicwrkgrTybJERFqRGXlw/132\",\"watermark\":{\"timestamp\":1526261319,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24xwrQB0_3VlQnT98rx7SBsg', 'dd76a014-d0b8-4dd7-91ad-f4f487d41afa', '048829d4b28c185b781ca46f8ee3ef96b8514dad', '2018-05-12 13:11:25', '2018-05-12 13:11:25', 'WvDjQDH3srsmSCck2dbzog==', '{\"openId\":\"oodE24xwrQB0_3VlQnT98rx7SBsg\",\"nickName\":\"策划运营I周长胜Ⅰ大海\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Changsha\",\"province\":\"Hunan\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK0Y2dnA8j5ZGSAaPGBO82aeZu1nXtMzZk2uwVQVmQC0ickWrPpUO6AM0IQfrYr9AUDib1tiaFc0fR1w/132\",\"watermark\":{\"timestamp\":1526130684,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24y7Yl7EEp3LQdSJEZTQI3NU', '06bf2bda-e66f-452c-9729-511a3cedcdba', '9a6ed864f6ed60586a2d5e71c092c6d4114d2fd8', '2018-05-14 13:38:54', '2018-05-14 13:38:54', 'INF40fmoaaOSxk1U3+Lnbw==', '{\"openId\":\"oodE24y7Yl7EEp3LQdSJEZTQI3NU\",\"nickName\":\"lilian\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Huanggang\",\"province\":\"Hubei\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK5cia5d2VyH3ItPkM0BmibKIoSFjFNHCGoUZ2nmVR4U1IxWxoYl9SzGdJfNMZJIf1CwEfM10tiauxibw/132\",\"watermark\":{\"timestamp\":1526305132,\"appid\":\"wx43906d390cba4987\"}}');
INSERT INTO `cSessionInfo` (`open_id`, `uuid`, `skey`, `create_time`, `last_visit_time`, `session_key`, `user_info`) VALUES
('oodE24y8fFM78ntw6pr4KQIAM6xs', '7f565df3-78a6-47e9-b13a-d8b9171dde1c', '3de7b1a57928eda4cfc25112d1144cc52a071038', '2018-05-14 07:24:15', '2018-05-14 07:24:15', 'PPcewmYm5UOwa2NRpaefaA==', '{\"openId\":\"oodE24y8fFM78ntw6pr4KQIAM6xs\",\"nickName\":\"小方象乐高课程招商加盟David\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/juDt2IiaeDtuyCjJJ3Cq0LIwiaTu2xjRQ87ddoyNB66L6EibK117gf0fY6TLHeu7rRyDxlEib2Uj0uZelwZHYfic1Dw/132\",\"watermark\":{\"timestamp\":1526282652,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24ycRZNs1vsMAxvEi346FyM0', '5c578c57-4243-43da-90e3-8af0a8c6a44f', 'd717861aa7b203bd959fcd3c6278c920e072f727', '2018-05-10 13:34:40', '2018-05-10 13:34:40', 'KHf2jDypPjyt63nAReeU4w==', '{\"openId\":\"oodE24ycRZNs1vsMAxvEi346FyM0\",\"nickName\":\"秀虹\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqcxCXEvlZPUicL0Nib3yNHcz8lkbB69s5GQXNiazwqIV7v1fiaGIvF2VrukUn1mVibXIBXaojfich2RTkw/132\",\"watermark\":{\"timestamp\":1525959278,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24ye3o6nBnZOZ4CngTIx_hP4', '1b53a151-baab-4cc0-be89-9ff79f195c0a', 'd5c35b148124c3cf3cb9e8ceeb5b10343e464a99', '2018-05-14 13:15:12', '2018-05-14 13:15:12', 'Sz48h/PupgYKXDaaF4eMYw==', '{\"openId\":\"oodE24ye3o6nBnZOZ4CngTIx_hP4\",\"nickName\":\"Cassiel Zhou\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/pic1ibj7XibmJpl0QhqctK1vADnbZsYwSLsibXibM2hic0AibJv80zofFIOxaB4aojTowibqUz6cnbo8FUlDEk7SngNR6g/132\",\"watermark\":{\"timestamp\":1526303710,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24yefnQEZMu5Up_J9lgmMfd8', 'cb0e4158-ee60-49f1-a964-d613718e9af9', 'b9d15aa6a8f3023757b6ed28df54026f452d6b12', '2018-05-15 02:37:24', '2018-05-15 02:37:24', 'Xi+VQhAtKM5OPjWfg4qP2g==', '{\"openId\":\"oodE24yefnQEZMu5Up_J9lgmMfd8\",\"nickName\":\"隔壁村曹公子。\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Meizhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/PPV0dM8GU6Rpb9gpIg8aQVrYicQUTY9oRUwXkVlqBvAb4JjV1E3ee8bXaicjA8GpWe0on0yZGA4AqvKiacW0j0lJw/132\",\"watermark\":{\"timestamp\":1526351842,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24yiias1mVrYrYI0dPvYqSLo', '679c33c9-0031-4d66-99ff-263c9a052dad', '31e2d1d8e3a84988e24df119d5ca20eed7be1586', '2018-05-11 13:47:43', '2018-05-11 13:47:43', 'bTbKzOfHL1Hcs65rMQGK6g==', '{\"openId\":\"oodE24yiias1mVrYrYI0dPvYqSLo\",\"nickName\":\"虚妄\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Guangzhou\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/z3viaQcbPIZZic3UmPwibPAXnmjZiaY6V4eQibB2t4uNugmIibrnK3GU0byTEYUNRia3uUKcichbp1zpCnicV0GRj7BvyUQ/132\",\"watermark\":{\"timestamp\":1526046461,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24yMNpoux4oMufPapYUR4OPY', '21ec3730-13a5-4ffc-9056-432742e77654', '2bf7d4a32103fa1b84fd848be8cbde4354452850', '2018-05-13 14:21:50', '2018-05-13 14:21:50', 'QAwQfPk9q6VXKeBVAfcgOw==', '{\"openId\":\"oodE24yMNpoux4oMufPapYUR4OPY\",\"nickName\":\"兔子\",\"gender\":2,\"language\":\"en\",\"city\":\"Hangzhou\",\"province\":\"Zhejiang\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq59jxTCDZndoLYImJduo1ib5AVVE8JCJJ3OsTFg7I23Yeaia3J6bicXk9LW5MqjIP3uiaazPYIENDkbw/132\",\"watermark\":{\"timestamp\":1526221307,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24ynMYVTXqDfEwjLtHDa0yx0', 'c7bbbc04-2b23-4f0e-abec-8e6515161c22', 'bc964a34831a3f0b0810b278234c8a427913cae4', '2018-05-10 12:35:09', '2018-05-10 12:35:09', 'klr9MCahCdy2WLToOAgbXA==', '{\"openId\":\"oodE24ynMYVTXqDfEwjLtHDa0yx0\",\"nickName\":\"Jun.\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Ganzhou\",\"province\":\"Jiangxi\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erFaOajK4HdfK4pBntNPmKtIPEDSSIyGxK2uwx1ctBGCAmSXdVib0AAVB53m5SqDQia4mcaK0Gu0M8Q/132\",\"watermark\":{\"timestamp\":1525955705,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24yQ5MKlncm_tHaIqx6lWr_s', '5ef033e2-184f-4a59-8170-f3c09549584b', '96dfa5c6796de11dca4aa731ad1c769153c249ba', '2018-05-11 01:17:26', '2018-05-11 01:17:26', 'E5Rr0XFVczfILlDnbAcG3g==', '{\"openId\":\"oodE24yQ5MKlncm_tHaIqx6lWr_s\",\"nickName\":\"關虎章律師\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/WIW37l5MEPFgaynom6YMS6JVvSJKIz3GA02V4HnJwsfwGLyWJbMpibYZLGrJ9OwhydENeZxkDsP9WGUA4GrzibzA/132\",\"watermark\":{\"timestamp\":1526001442,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24yQKLQBZUcpfYwDRMNsAgH4', '29c7d38e-7d50-48f7-92d0-f928b4bede99', 'bc5439f04c3f304416be24b5040ea400a42e1aa8', '2018-05-13 04:09:32', '2018-05-13 04:09:32', '6I1yFjm4vNW00gq02H9rSQ==', '{\"openId\":\"oodE24yQKLQBZUcpfYwDRMNsAgH4\",\"nickName\":\"鲜鲜\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Vgxdia6GF5Zl2kCWC9efDOjDAEsqibuicEjdrk4qYsNcV4llicq46FD4A1q7jMTkq57FcY5CbPgicmCbCQmaTwN3ibWw/132\",\"watermark\":{\"timestamp\":1526184567,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24z-CZ3pbfx1nMX2YdZUWAl4', '685f752d-34aa-4a63-b8d4-5415ffdd22c7', 'd617cd647b7741a413d223fe593d3e0f4c38c34a', '2018-05-13 04:57:35', '2018-05-13 04:57:35', 'hM7b3IhKlJX61RCHwV8oOQ==', '{\"openId\":\"oodE24z-CZ3pbfx1nMX2YdZUWAl4\",\"nickName\":\"Jim Huang\",\"gender\":1,\"language\":\"en\",\"city\":\"\",\"province\":\"Taoyuan County\",\"country\":\"Taiwan\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIMCFGcnmKVneVnko6tCmFAnJ4u7diaDhVSGYPMwdXYKrVRdMI5kic7fLBQaKXyLdwcwW5HMdQm0L3w/132\",\"watermark\":{\"timestamp\":1526187453,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24zH4t3nF1wBGw1UGagJBhTE', 'ce0e24c6-d0ed-40f1-9efd-4d56b28b7da2', '3f3e85d173524dbcb020a3a12c564b2ed2bcb76c', '2018-05-13 12:31:22', '2018-05-13 12:31:22', '10irceUQ0Pig4IwwMCtF3w==', '{\"openId\":\"oodE24zH4t3nF1wBGw1UGagJBhTE\",\"nickName\":\"绿树~程英\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epw2Y9Tn5SLIfwKAcxiaA8txnWXib1VVHPP2KW8AzyZfRhic695UQnSb7K3s3EPNT32SHvNr7kzr2AeA/132\",\"watermark\":{\"timestamp\":1526214681,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24zNsQ8Ll6L8-06w2Ey14Tuk', '150cf283-fe6a-4fb7-8c7e-6838ae711ba6', '737c860b64cfb92a0b3d3dd7cfe967e2843dcf31', '2018-05-12 13:48:51', '2018-05-12 13:48:51', '8ARu/DhUOyXees6t1LiZ7w==', '{\"openId\":\"oodE24zNsQ8Ll6L8-06w2Ey14Tuk\",\"nickName\":\"Jie\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/2S8Gdp0SoZqGpmy8diaVORexhCRZYOBayD8gpVwxmDxl6kibQQfODFMzcNCaiaQm1Tkfkx357RwncibtEYvoQmTUhQ/132\",\"watermark\":{\"timestamp\":1526132929,\"appid\":\"wx43906d390cba4987\"}}'),
('oodE24zua1w6tnjzaqzrU6r7RleE', '46e03e18-37d7-40b0-8dc2-ec8fd94b28f5', '3ff3aaddacb1eb09d4e09fe323e0e25f638ea7f6', '2018-05-12 11:57:35', '2018-05-12 11:57:35', 'fXTjWHt9RJ6N2ykwNM6fFg==', '{\"openId\":\"oodE24zua1w6tnjzaqzrU6r7RleE\",\"nickName\":\"爆竹\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"Shenzhen\",\"province\":\"Guangdong\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/luh1AW9aTASEhXd5aFyMkvbwP5t1whVX3GAsNyXhTHicCNMicjK42WqBAeLCQzQib5w6en7mBLia6Mfc8gTNtzunhA/132\",\"watermark\":{\"timestamp\":1526126253,\"appid\":\"wx43906d390cba4987\"}}');

-- --------------------------------------------------------

--
-- 表的结构 `impromptu_audio`
--

CREATE TABLE `impromptu_audio` (
  `audio_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '录音ID',
  `audio_type` int(5) NOT NULL DEFAULT '1' COMMENT '音频类型(1,演讲 2,点评)',
  `audio_status` int(5) NOT NULL DEFAULT '1' COMMENT '音频状态(1,未完成;2,完成)',
  `audio_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '演讲标题',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房间ID',
  `audio_text` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '演讲稿',
  `time_duration` int(10) DEFAULT NULL COMMENT '音频时长(单位:秒)',
  `like_amount` int(10) DEFAULT '0' COMMENT '点赞次数',
  `view_amount` int(10) NOT NULL DEFAULT '0' COMMENT '播放次数',
  `comment_amount` int(5) NOT NULL DEFAULT '0' COMMENT '点评次数',
  `relate_audio` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联音频',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='演讲录音表';

--
-- 转存表中的数据 `impromptu_audio`
--

INSERT INTO `impromptu_audio` (`audio_id`, `audio_type`, `audio_status`, `audio_name`, `user_id`, `room_id`, `audio_text`, `time_duration`, `like_amount`, `view_amount`, `comment_amount`, `relate_audio`, `create_date`) VALUES
('11732e20-5453-11e8-990e-2bfb740868ba', 2, 2, '点评如何锻炼思维', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 57, 1, 3, 0, '797ac2e0-5452-11e8-a34d-593abcea7197', '2018-05-10 13:07:19'),
('1288a040-5518-11e8-9910-134ce1212049', 2, 2, '点评人该知足还是不知足？', 'oodE24_7jIys881HhvYPIjCBfQXc', '5d2fe9b0-5517-11e8-90ff-0ddf17cf0d65', NULL, 59, 0, 0, 0, '6757dba0-5517-11e8-9ee3-67c9c4ad864e', '2018-05-11 12:38:43'),
('13aec540-545e-11e8-b630-d3846e0666a3', 2, 2, '点评时代潮流', 'oodE248iGhqQYEOCD7AhqQUNflTQ', '', NULL, 83, 1, 5, 2, '7907d8a0-5459-11e8-8b54-3bca526701b0', '2018-05-10 14:26:14'),
('147f2170-577b-11e8-a7d9-ef4995ef4f6c', 1, 2, '打卡的意义', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '0a350180-577b-11e8-8f91-03fb447cdf91', NULL, 131, 0, 0, 0, NULL, '2018-05-14 13:33:33'),
('164036a0-56b0-11e8-b3e5-41b5ff6336c1', 2, 2, '点评妈妈，您最棒', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '', NULL, 82, 0, 0, 0, '9bfe6980-56ae-11e8-bf48-f7919cf2cee0', '2018-05-13 13:18:21'),
('166f8fb0-551e-11e8-b659-31b7a4bf957e', 2, 2, '点评点评我的同学', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 59, 0, 1, 0, 'a3e1d8e0-551d-11e8-b3d3-c74caf6ea6d8', '2018-05-11 13:20:35'),
('16e12d70-55f3-11e8-ab85-872785132573', 2, 2, '点评点评互联网', 'oodE244WfcWaQMDW1lWpDveVIkr8', '', NULL, 19, 0, 2, 0, 'c1f34350-55ef-11e8-aeef-cfd357e00ef9', '2018-05-12 14:45:20'),
('1cb1bbf0-551e-11e8-9ee3-67c9c4ad864e', 2, 2, '点评如果我失去了四肢', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '57436fd0-551d-11e8-90ff-0ddf17cf0d65', NULL, 75, 0, 1, 0, '61347340-551d-11e8-9910-134ce1212049', '2018-05-11 13:22:26'),
('1ee06a80-5518-11e8-9ee3-67c9c4ad864e', 2, 2, '点评人该知足还是不知足？', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '5d2fe9b0-5517-11e8-90ff-0ddf17cf0d65', NULL, 75, 0, 0, 0, '670d6520-5517-11e8-9910-134ce1212049', '2018-05-11 12:39:13'),
('21459aa0-541b-11e8-a0aa-f962afe5e119', 2, 2, '点评我的工作', 'oodE24_7jIys881HhvYPIjCBfQXc', '0cf6ef40-541b-11e8-90ff-0ddf17cf0d65', NULL, 11, 0, 0, 0, '13664600-541b-11e8-8dc5-e3bd502e3ccf', '2018-05-10 06:27:07'),
('21b0ced0-5437-11e8-bb8d-3778c75854ff', 2, 2, '点评试错力', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 'b5e8f330-5436-11e8-90ff-0ddf17cf0d65', NULL, 10, 0, 0, 0, 'bc3f1ca0-5436-11e8-91a5-0d4cdeb3d4c9', '2018-05-10 09:47:31'),
('21b42c70-55f3-11e8-aeef-cfd357e00ef9', 2, 2, '点评好同事，坏同事', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 71, 0, 1, 0, 'b8743640-5518-11e8-af10-add43a8e2a27', '2018-05-12 14:45:37'),
('21fe8bb0-551e-11e8-9910-134ce1212049', 2, 2, '点评如果我失去了四肢', 'oodE24_7jIys881HhvYPIjCBfQXc', '57436fd0-551d-11e8-90ff-0ddf17cf0d65', NULL, 70, 0, 0, 0, '67910550-551d-11e8-9ee3-67c9c4ad864e', '2018-05-11 13:22:07'),
('26391510-56b3-11e8-b3e5-41b5ff6336c1', 2, 2, '点评母亲节感想', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '', NULL, 82, 0, 1, 0, 'bdfb4ec0-56ab-11e8-ae13-b9989da314f6', '2018-05-13 13:40:23'),
('264a7f90-5455-11e8-990e-2bfb740868ba', 2, 2, '点评高铁', 'oodE24_7jIys881HhvYPIjCBfQXc', '778b8b20-5454-11e8-90ff-0ddf17cf0d65', NULL, 51, 0, 1, 0, '7e446e00-5454-11e8-b7a2-33879f705695', '2018-05-10 13:23:04'),
('26826930-56aa-11e8-9765-65c57bedd5f5', 1, 2, '妈妈，我为您骄傲', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '1d14c690-56aa-11e8-8f91-03fb447cdf91', NULL, 124, 1, 12, 1, NULL, '2018-05-13 12:37:53'),
('26a97930-56aa-11e8-890b-8f367fca63dd', 1, 2, '妈妈，我为您骄傲', 'oodE24zH4t3nF1wBGw1UGagJBhTE', '1d14c690-56aa-11e8-8f91-03fb447cdf91', NULL, 135, 1, 3, 1, NULL, '2018-05-13 12:38:11'),
('271210f0-5437-11e8-91a5-0d4cdeb3d4c9', 2, 2, '点评试错力', 'oodE24_7jIys881HhvYPIjCBfQXc', 'b5e8f330-5436-11e8-90ff-0ddf17cf0d65', NULL, 86, 0, 0, 0, 'bcdf7b50-5436-11e8-bb8d-3778c75854ff', '2018-05-10 09:49:11'),
('27bb5a00-541b-11e8-8dc5-e3bd502e3ccf', 2, 2, '点评我的工作', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '0cf6ef40-541b-11e8-90ff-0ddf17cf0d65', NULL, 7, 0, 1, 0, '1307ab40-541b-11e8-a0aa-f962afe5e119', '2018-05-10 06:27:12'),
('28930330-577a-11e8-b925-4b1e4e094eb9', 2, 2, '点评丑小鸭', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '722ab160-5779-11e8-8f91-03fb447cdf91', NULL, 45, 0, 1, 0, '7b83ba90-5779-11e8-af7e-2f89da9bb0c8', '2018-05-14 13:25:42'),
('2d0c0a60-5518-11e8-a343-d55afeb2c4c0', 1, 2, '我的同学', 'oodE24_KvBCV4H9d1f43avoaezRE', '232da490-5518-11e8-90ff-0ddf17cf0d65', NULL, 135, 2, 9, 1, NULL, '2018-05-11 12:40:35'),
('2da4ab70-5519-11e8-9910-134ce1212049', 2, 2, '点评环境污染', 'oodE24_7jIys881HhvYPIjCBfQXc', '833980c0-5518-11e8-90ff-0ddf17cf0d65', NULL, 39, 0, 1, 0, '8d54a170-5518-11e8-9ee3-67c9c4ad864e', '2018-05-11 12:46:05'),
('2e4e1a90-5779-11e8-b652-279c90dc66b5', 2, 2, '点评自信与自负', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 'a4fdd230-5778-11e8-8f91-03fb447cdf91', NULL, 28, 0, 1, 0, 'ae8eb440-5778-11e8-af7e-2f89da9bb0c8', '2018-05-14 13:18:11'),
('2ebbdd40-5518-11e8-afdf-eb99a4b39837', 1, 2, '我的同学', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '232da490-5518-11e8-90ff-0ddf17cf0d65', NULL, 130, 3, 12, 2, NULL, '2018-05-11 12:40:34'),
('2ef33210-56a6-11e8-b9d9-e533eba34652', 1, 2, '2018-05-13 20:07:37', 'oodE245tpxdouyL9TZhQSt7jEruo', NULL, '', 169, 3, 10, 2, NULL, '2018-05-13 12:07:37'),
('31febbf0-5778-11e8-b652-279c90dc66b5', 2, 2, '点评如果我失去了四肢', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 52, 0, 4, 0, '37d2eb80-5775-11e8-b925-4b1e4e094eb9', '2018-05-14 13:10:38'),
('326d4e80-5773-11e8-b925-4b1e4e094eb9', 1, 2, '人性本善还是人性本恶？', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '28d78a70-5773-11e8-8f91-03fb447cdf91', NULL, 135, 0, 0, 0, NULL, '2018-05-14 12:37:49'),
('338908b0-5447-11e8-a185-ad91398d26d9', 2, 2, '点评加法人生', 'oodE24_7jIys881HhvYPIjCBfQXc', '131c67c0-5447-11e8-90ff-0ddf17cf0d65', NULL, 17, 0, 0, 0, '198dba50-5447-11e8-99e7-87ba7c29b72a', '2018-05-10 11:42:40'),
('3402a580-5447-11e8-99e7-87ba7c29b72a', 2, 2, '点评加法人生', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '131c67c0-5447-11e8-90ff-0ddf17cf0d65', NULL, 102, 0, 0, 0, '19a11b40-5447-11e8-a185-ad91398d26d9', '2018-05-10 11:44:08'),
('363ace20-56ab-11e8-af7b-51a2faa76e8e', 2, 2, '点评妈妈，您最棒', 'oodE24_7jIys881HhvYPIjCBfQXc', '932fc2d0-56aa-11e8-8f91-03fb447cdf91', NULL, 52, 0, 1, 0, '9dbeb3f0-56aa-11e8-bf48-f7919cf2cee0', '2018-05-13 12:44:16'),
('3682f030-55e6-11e8-abe6-d53d57b61583', 2, 2, '点评人生没有白走的路', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '83a94360-55e5-11e8-90ff-0ddf17cf0d65', NULL, 72, 0, 5, 0, '8dcf87a0-55e5-11e8-8384-d1d3ebf030ca', '2018-05-12 13:14:22'),
('37d2eb80-5775-11e8-b925-4b1e4e094eb9', 1, 2, '如果我失去了四肢', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '2d75dfd0-5775-11e8-8f91-03fb447cdf91', NULL, 134, 1, 2, 1, NULL, '2018-05-14 12:52:15'),
('3e24b290-541c-11e8-a0aa-f962afe5e119', 2, 2, '点评时间是什么？', 'oodE24_7jIys881HhvYPIjCBfQXc', 'a1810ec0-541b-11e8-90ff-0ddf17cf0d65', NULL, 137, 0, 1, 0, 'a7d71120-541b-11e8-8dc5-e3bd502e3ccf', '2018-05-10 06:37:14'),
('44e55aa0-56ae-11e8-bf48-f7919cf2cee0', 2, 2, '点评妈妈，您最棒', 'oodE240QoAfITCARm0JM7e-TBJx0', '', NULL, 95, 0, 11, 0, '5f277d60-56ab-11e8-b3e5-41b5ff6336c1', '2018-05-13 13:05:14'),
('4539ba20-5517-11e8-a343-d55afeb2c4c0', 1, 2, '勇气', 'oodE24_KvBCV4H9d1f43avoaezRE', '3b3332e0-5517-11e8-90ff-0ddf17cf0d65', NULL, 12, 0, 0, 0, NULL, '2018-05-11 12:32:00'),
('4a3817a0-545a-11e8-94b1-e39851fd0e50', 2, 2, '点评点评如何锻炼思维', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 9, 0, 3, 0, 'ca544b50-5457-11e8-990e-2bfb740868ba', '2018-05-10 13:59:02'),
('50322610-5454-11e8-92f4-d1bca0c17fe0', 1, 2, '我是（男神/女神）', 'oodE241T4xYO-qusmLaoOHTNU50o', '49a0a150-5454-11e8-90ff-0ddf17cf0d65', NULL, 17, 0, 1, 0, NULL, '2018-05-10 13:16:35'),
('50bd00f0-5454-11e8-b7a2-33879f705695', 1, 2, '我是（男神/女神）', 'oodE240QoAfITCARm0JM7e-TBJx0', '49a0a150-5454-11e8-90ff-0ddf17cf0d65', NULL, 29, 0, 2, 0, NULL, '2018-05-10 13:16:45'),
('513e4840-56ac-11e8-ae86-61807e3ade8e', 1, 2, '妈妈，我想对你说', 'oodE24-qVk9InEWRSSSje9N6vtxc', '47c61e50-56ac-11e8-8f91-03fb447cdf91', NULL, 91, 0, 3, 0, NULL, '2018-05-13 12:52:52'),
('52263740-56ac-11e8-af7b-51a2faa76e8e', 1, 2, '妈妈，我想对你说', 'oodE24_7jIys881HhvYPIjCBfQXc', '47c61e50-56ac-11e8-8f91-03fb447cdf91', NULL, 135, 1, 7, 2, NULL, '2018-05-13 12:53:36'),
('52f4fa10-5519-11e8-9ee3-67c9c4ad864e', 2, 2, '点评环境污染', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '833980c0-5518-11e8-90ff-0ddf17cf0d65', NULL, 60, 0, 0, 0, '8d411970-5518-11e8-9910-134ce1212049', '2018-05-11 12:47:49'),
('53069720-55e6-11e8-8384-d1d3ebf030ca', 2, 2, '点评人生没有白走的路', 'oodE2453Wmjn8UdgqAGxDQ-LisrY', '83a94360-55e5-11e8-90ff-0ddf17cf0d65', NULL, 37, 0, 0, 0, '8dd94ba0-55e5-11e8-abe6-d53d57b61583', '2018-05-12 13:14:38'),
('58a0a2d0-56b2-11e8-8075-7f51600de952', 2, 2, '点评妈妈，您最棒', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 26, 0, 0, 0, '604b8b00-56ab-11e8-bf48-f7919cf2cee0', '2018-05-13 13:34:23'),
('5e638050-551a-11e8-9ee3-67c9c4ad864e', 2, 2, '点评压力山大', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '9939b740-5519-11e8-90ff-0ddf17cf0d65', NULL, 64, 0, 0, 0, 'a35fad60-5519-11e8-9910-134ce1212049', '2018-05-11 12:55:21'),
('5f277d60-56ab-11e8-b3e5-41b5ff6336c1', 1, 2, '妈妈，您最棒', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '559f74f0-56ab-11e8-8f91-03fb447cdf91', NULL, 125, 4, 21, 3, NULL, '2018-05-13 12:48:48'),
('604b8b00-56ab-11e8-bf48-f7919cf2cee0', 1, 2, '妈妈，您最棒', 'oodE240QoAfITCARm0JM7e-TBJx0', '559f74f0-56ab-11e8-8f91-03fb447cdf91', NULL, 124, 4, 5, 2, NULL, '2018-05-13 12:46:34'),
('6087aad0-5454-11e8-990e-2bfb740868ba', 2, 2, '点评包容', 'oodE24_7jIys881HhvYPIjCBfQXc', 'b2b75c20-5453-11e8-90ff-0ddf17cf0d65', NULL, 32, 0, 0, 0, 'b9372da0-5453-11e8-a34d-593abcea7197', '2018-05-10 13:17:14'),
('61347340-551d-11e8-9910-134ce1212049', 1, 2, '如果我失去了四肢', 'oodE24_7jIys881HhvYPIjCBfQXc', '57436fd0-551d-11e8-90ff-0ddf17cf0d65', NULL, 135, 0, 7, 2, NULL, '2018-05-11 13:17:49'),
('61ceef50-56ae-11e8-ae86-61807e3ade8e', 2, 2, '点评妈妈，我想对你说', 'oodE24-qVk9InEWRSSSje9N6vtxc', '47c61e50-56ac-11e8-8f91-03fb447cdf91', NULL, 56, 0, 1, 0, '52263740-56ac-11e8-af7b-51a2faa76e8e', '2018-05-13 13:07:03'),
('66625e70-551f-11e8-b659-31b7a4bf957e', 2, 2, '点评如果我只剩一天可活', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 21, 0, 1, 0, '6e608c30-5517-11e8-9c80-876d99b5e61b', '2018-05-11 13:29:59'),
('670d6520-5517-11e8-9910-134ce1212049', 1, 2, '人该知足还是不知足？', 'oodE24_7jIys881HhvYPIjCBfQXc', '5d2fe9b0-5517-11e8-90ff-0ddf17cf0d65', NULL, 135, 0, 0, 1, NULL, '2018-05-11 12:35:01'),
('6757dba0-5517-11e8-9ee3-67c9c4ad864e', 1, 2, '人该知足还是不知足？', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '5d2fe9b0-5517-11e8-90ff-0ddf17cf0d65', NULL, 135, 0, 1, 1, NULL, '2018-05-11 12:35:06'),
('67910550-551d-11e8-9ee3-67c9c4ad864e', 1, 2, '如果我失去了四肢', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '57436fd0-551d-11e8-90ff-0ddf17cf0d65', NULL, 128, 1, 14, 2, NULL, '2018-05-11 13:18:28'),
('69c779e0-5779-11e8-af7e-2f89da9bb0c8', 2, 2, '点评自信与自负', 'oodE24wu-BxDuyYQD4ByKB6gJZFQ', 'a4fdd230-5778-11e8-8f91-03fb447cdf91', NULL, 3, 0, 1, 0, 'ae304090-5778-11e8-b652-279c90dc66b5', '2018-05-14 13:19:24'),
('6d9d24e0-5777-11e8-a4d3-61ed6d13c436', 2, 2, '点评如果我中一个亿', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 13, 0, 2, 0, 'f3b8ba00-5775-11e8-a4d3-61ed6d13c436', '2018-05-14 13:05:10'),
('6e274500-551d-11e8-b659-31b7a4bf957e', 2, 2, '点评好同事，坏同事', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 100, 0, 1, 0, 'b8743640-5518-11e8-af10-add43a8e2a27', '2018-05-11 13:15:53'),
('6e608c30-5517-11e8-9c80-876d99b5e61b', 1, 2, '如果我只剩一天可活', 'oodE246BD0WE1GH1stbbEubbdGC4', '6457e210-5517-11e8-90ff-0ddf17cf0d65', NULL, 71, 1, 5, 1, NULL, '2018-05-11 12:34:14'),
('6ebf4e00-5517-11e8-a343-d55afeb2c4c0', 1, 2, '如果我只剩一天可活', 'oodE24_KvBCV4H9d1f43avoaezRE', '6457e210-5517-11e8-90ff-0ddf17cf0d65', NULL, 72, 0, 5, 1, NULL, '2018-05-11 12:34:12'),
('6ffd9300-551a-11e8-9910-134ce1212049', 2, 2, '点评压力山大', 'oodE24_7jIys881HhvYPIjCBfQXc', '9939b740-5519-11e8-90ff-0ddf17cf0d65', NULL, 54, 0, 1, 0, 'a34372d0-5519-11e8-9ee3-67c9c4ad864e', '2018-05-11 12:55:23'),
('71e7bf80-577a-11e8-a7d9-ef4995ef4f6c', 1, 2, '良师益友', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '6888c2e0-577a-11e8-8f91-03fb447cdf91', NULL, 130, 0, 0, 1, NULL, '2018-05-14 13:28:58'),
('72347ff0-577a-11e8-af7e-2f89da9bb0c8', 1, 2, '良师益友', 'oodE24wu-BxDuyYQD4ByKB6gJZFQ', '6888c2e0-577a-11e8-8f91-03fb447cdf91', NULL, 135, 0, 1, 1, NULL, '2018-05-14 13:29:19'),
('72d17270-55e9-11e8-93ca-d5e4e13413cf', 2, 2, '点评旅行中的意外', 'oodE244WfcWaQMDW1lWpDveVIkr8', '', NULL, 201, 1, 4, 1, '80af35e0-55e8-11e8-93ca-d5e4e13413cf', '2018-05-12 13:36:22'),
('7448af80-55f1-11e8-aeef-cfd357e00ef9', 2, 2, '点评点评旅行中的意外', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 96, 0, 1, 0, '72d17270-55e9-11e8-93ca-d5e4e13413cf', '2018-05-12 14:33:36'),
('75ce2e40-5455-11e8-b7a2-33879f705695', 2, 2, '点评高铁', 'oodE240QoAfITCARm0JM7e-TBJx0', '778b8b20-5454-11e8-90ff-0ddf17cf0d65', NULL, 71, 0, 0, 0, '7e0e42d0-5454-11e8-990e-2bfb740868ba', '2018-05-10 13:25:46'),
('7907d8a0-5459-11e8-8b54-3bca526701b0', 1, 2, '时代潮流', 'oodE24_7jIys881HhvYPIjCBfQXc', '72f17750-5459-11e8-90ff-0ddf17cf0d65', NULL, 125, 3, 12, 1, NULL, '2018-05-10 13:55:20'),
('7966ecc0-5452-11e8-9954-05aae439de0d', 1, 2, '如何锻炼思维', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '7303a3f0-5452-11e8-90ff-0ddf17cf0d65', NULL, 128, 1, 23, 1, NULL, '2018-05-10 13:05:15'),
('797ac2e0-5452-11e8-a34d-593abcea7197', 1, 2, '如何锻炼思维', 'oodE24_xgy8EdCX7e16zpUMd9Byw', '7303a3f0-5452-11e8-90ff-0ddf17cf0d65', NULL, 64, 1, 10, 2, NULL, '2018-05-10 13:04:19'),
('7996ab20-5459-11e8-94b1-e39851fd0e50', 2, 2, '点评积极主动', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 80, 0, 2, 0, 'cfc92760-5455-11e8-b7a2-33879f705695', '2018-05-10 13:53:11'),
('79b8d080-5777-11e8-b925-4b1e4e094eb9', 1, 2, '此刻最想吐槽的一件事', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '70a73090-5777-11e8-8f91-03fb447cdf91', NULL, 133, 0, 1, 0, NULL, '2018-05-14 13:08:23'),
('7a6f33d0-56a9-11e8-9765-65c57bedd5f5', 1, 2, '妈妈，我爱您', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '71483720-56a9-11e8-8f91-03fb447cdf91', NULL, 135, 1, 10, 1, NULL, '2018-05-13 12:33:14'),
('7b83ba90-5779-11e8-af7e-2f89da9bb0c8', 1, 2, '丑小鸭', 'oodE24wu-BxDuyYQD4ByKB6gJZFQ', '722ab160-5779-11e8-8f91-03fb447cdf91', NULL, 135, 0, 2, 1, NULL, '2018-05-14 13:22:11'),
('7dc2da80-551b-11e8-9691-23562aedda75', 2, 2, '点评我的同学', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 58, 0, 1, 0, '2d0c0a60-5518-11e8-a343-d55afeb2c4c0', '2018-05-11 13:02:00'),
('7dcf9470-577b-11e8-af7e-2f89da9bb0c8', 2, 2, '点评良师益友', 'oodE24wu-BxDuyYQD4ByKB6gJZFQ', '6888c2e0-577a-11e8-8f91-03fb447cdf91', NULL, 0, 0, 0, 0, '71e7bf80-577a-11e8-a7d9-ef4995ef4f6c', '2018-05-14 13:34:15'),
('7de99700-5779-11e8-b925-4b1e4e094eb9', 1, 2, '丑小鸭', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '722ab160-5779-11e8-8f91-03fb447cdf91', NULL, 135, 0, 1, 0, NULL, '2018-05-14 13:22:54'),
('7e0e42d0-5454-11e8-990e-2bfb740868ba', 1, 2, '高铁', 'oodE24_7jIys881HhvYPIjCBfQXc', '778b8b20-5454-11e8-90ff-0ddf17cf0d65', NULL, 135, 2, 3, 1, NULL, '2018-05-10 13:19:49'),
('7e446e00-5454-11e8-b7a2-33879f705695', 1, 2, '高铁', 'oodE240QoAfITCARm0JM7e-TBJx0', '778b8b20-5454-11e8-90ff-0ddf17cf0d65', NULL, 135, 2, 7, 1, NULL, '2018-05-10 13:19:48'),
('80a15980-56b4-11e8-8101-993cac4b95f8', 2, 2, '点评我的妈妈', 'oodE24_KvBCV4H9d1f43avoaezRE', '', NULL, 56, 0, 2, 0, 'b8d1fdd0-56b1-11e8-86f0-71fcc3b100b9', '2018-05-13 13:49:49'),
('80af35e0-55e8-11e8-93ca-d5e4e13413cf', 1, 2, '旅行中的意外', 'oodE244WfcWaQMDW1lWpDveVIkr8', NULL, '', 46, 0, 2, 1, NULL, '2018-05-12 13:29:35'),
('8294b110-551f-11e8-9910-134ce1212049', 2, 2, '点评可以说谎吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 'a41f88b0-551e-11e8-90ff-0ddf17cf0d65', NULL, 54, 0, 2, 0, 'ae776440-551e-11e8-9ee3-67c9c4ad864e', '2018-05-11 13:31:41'),
('835cc240-56af-11e8-8083-1fcf4da48599', 2, 2, '点评妈妈，您最棒', 'oodE24_KvBCV4H9d1f43avoaezRE', '', NULL, 68, 1, 3, 0, '9c8dd510-56aa-11e8-af7b-51a2faa76e8e', '2018-05-13 13:14:07'),
('83950a10-551f-11e8-9ee3-67c9c4ad864e', 2, 2, '点评可以说谎吗？', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', 'a41f88b0-551e-11e8-90ff-0ddf17cf0d65', NULL, 71, 0, 0, 0, 'ae36b1c0-551e-11e8-9910-134ce1212049', '2018-05-11 13:32:21'),
('83d560c0-5456-11e8-b7a2-33879f705695', 2, 2, '点评积极主动', 'oodE240QoAfITCARm0JM7e-TBJx0', 'c9344740-5455-11e8-90ff-0ddf17cf0d65', NULL, 63, 0, 0, 0, 'd0cd50f0-5455-11e8-990e-2bfb740868ba', '2018-05-10 13:33:03'),
('85de2910-5456-11e8-990e-2bfb740868ba', 2, 2, '点评积极主动', 'oodE24_7jIys881HhvYPIjCBfQXc', 'c9344740-5455-11e8-90ff-0ddf17cf0d65', NULL, 56, 0, 2, 0, 'cfc92760-5455-11e8-b7a2-33879f705695', '2018-05-10 13:33:01'),
('8d411970-5518-11e8-9910-134ce1212049', 1, 2, '环境污染', 'oodE24_7jIys881HhvYPIjCBfQXc', '833980c0-5518-11e8-90ff-0ddf17cf0d65', NULL, 135, 0, 2, 1, NULL, '2018-05-11 12:43:15'),
('8d54a170-5518-11e8-9ee3-67c9c4ad864e', 1, 2, '环境污染', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '833980c0-5518-11e8-90ff-0ddf17cf0d65', NULL, 121, 0, 2, 1, NULL, '2018-05-11 12:43:03'),
('8dcf87a0-55e5-11e8-8384-d1d3ebf030ca', 1, 2, '人生没有白走的路', 'oodE2453Wmjn8UdgqAGxDQ-LisrY', '83a94360-55e5-11e8-90ff-0ddf17cf0d65', NULL, 133, 1, 5, 2, NULL, '2018-05-12 13:10:48'),
('8dd94ba0-55e5-11e8-abe6-d53d57b61583', 1, 2, '人生没有白走的路', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '83a94360-55e5-11e8-90ff-0ddf17cf0d65', NULL, 128, 1, 5, 2, NULL, '2018-05-12 13:10:37'),
('8e877b30-545f-11e8-91d8-815c2bf638ad', 2, 2, '点评点评时代潮流', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 33, 0, 0, 0, '13aec540-545e-11e8-b630-d3846e0666a3', '2018-05-10 14:36:43'),
('92a838c0-56a9-11e8-890b-8f367fca63dd', 1, 2, '妈妈，我为您骄傲', 'oodE24zH4t3nF1wBGw1UGagJBhTE', '89bce580-56a9-11e8-8f91-03fb447cdf91', NULL, 110, 1, 5, 0, NULL, '2018-05-13 12:33:39'),
('94cb3b90-5774-11e8-b925-4b1e4e094eb9', 2, 2, '点评如果我失去了四肢', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', 'dd90a5a0-5773-11e8-8f91-03fb447cdf91', NULL, 71, 0, 0, 0, 'e6fc4c70-5773-11e8-a4d3-61ed6d13c436', '2018-05-14 12:46:18'),
('953e6cc0-5524-11e8-b79a-af54a0ab8604', 2, 2, '点评我的同学', 'oodE244wADUiyy3aS2cdOAMAweoM', '', NULL, 60, 1, 5, 1, '2ebbdd40-5518-11e8-afdf-eb99a4b39837', '2018-05-11 14:07:04'),
('97b0c4d0-56af-11e8-86f0-71fcc3b100b9', 2, 2, '点评点评妈妈，您最棒', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 36, 0, 0, 0, 'e41a1b80-56ac-11e8-bf48-f7919cf2cee0', '2018-05-13 13:14:40'),
('9ae53150-56ae-11e8-ae86-61807e3ade8e', 1, 2, '妈妈，您最棒', 'oodE24-qVk9InEWRSSSje9N6vtxc', '9193a230-56ae-11e8-8f91-03fb447cdf91', NULL, 131, 2, 6, 1, NULL, '2018-05-13 13:10:20'),
('9b5b39c0-56b0-11e8-b3e5-41b5ff6336c1', 2, 2, '点评妈妈，您最棒', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '', NULL, 84, 0, 1, 0, '604b8b00-56ab-11e8-bf48-f7919cf2cee0', '2018-05-13 13:22:16'),
('9bfe6980-56ae-11e8-bf48-f7919cf2cee0', 1, 2, '妈妈，您最棒', 'oodE240QoAfITCARm0JM7e-TBJx0', '9193a230-56ae-11e8-8f91-03fb447cdf91', NULL, 135, 2, 4, 1, NULL, '2018-05-13 13:09:54'),
('9c8dd510-56aa-11e8-af7b-51a2faa76e8e', 1, 2, '妈妈，您最棒', 'oodE24_7jIys881HhvYPIjCBfQXc', '932fc2d0-56aa-11e8-8f91-03fb447cdf91', NULL, 135, 1, 9, 2, NULL, '2018-05-13 12:41:19'),
('9cfd7c60-5521-11e8-80bb-d54f3cccf833', 2, 2, '点评包容', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 6, 0, 2, 0, 'b8f23560-5453-11e8-990e-2bfb740868ba', '2018-05-11 13:45:51'),
('9dbeb3f0-56aa-11e8-bf48-f7919cf2cee0', 1, 2, '妈妈，您最棒', 'oodE240QoAfITCARm0JM7e-TBJx0', '932fc2d0-56aa-11e8-8f91-03fb447cdf91', NULL, 110, 0, 0, 1, NULL, '2018-05-13 12:40:55'),
('a06ebef0-541c-11e8-8dc5-e3bd502e3ccf', 2, 2, '点评时间是什么？', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 'a1810ec0-541b-11e8-90ff-0ddf17cf0d65', NULL, 23, 0, 0, 0, 'a8e23f90-541b-11e8-a0aa-f962afe5e119', '2018-05-10 06:37:59'),
('a34372d0-5519-11e8-9ee3-67c9c4ad864e', 1, 2, '压力山大', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '9939b740-5519-11e8-90ff-0ddf17cf0d65', NULL, 135, 0, 1, 1, NULL, '2018-05-11 12:51:44'),
('a35fad60-5519-11e8-9910-134ce1212049', 1, 2, '压力山大', 'oodE24_7jIys881HhvYPIjCBfQXc', '9939b740-5519-11e8-90ff-0ddf17cf0d65', NULL, 135, 0, 0, 1, NULL, '2018-05-11 12:51:03'),
('a3a38a40-54c3-11e8-b83f-417582b5ee8e', 2, 2, '点评外卖用餐体验', 'oodE24_7jIys881HhvYPIjCBfQXc', '7bcd7b20-54c3-11e8-90ff-0ddf17cf0d65', NULL, 6, 0, 1, 0, '863b4fb0-54c3-11e8-8a33-cdab86efb9a6', '2018-05-11 02:33:18'),
('a3e1d8e0-551d-11e8-b3d3-c74caf6ea6d8', 2, 2, '点评我的同学', 'oodE24_KvBCV4H9d1f43avoaezRE', '', NULL, 51, 1, 3, 1, '2ebbdd40-5518-11e8-afdf-eb99a4b39837', '2018-05-11 13:17:23'),
('a3e6adc0-54c3-11e8-8a33-cdab86efb9a6', 2, 2, '点评外卖用餐体验', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '7bcd7b20-54c3-11e8-90ff-0ddf17cf0d65', NULL, 4, 0, 0, 0, '859b8d40-54c3-11e8-b83f-417582b5ee8e', '2018-05-11 02:33:12'),
('a457d280-55e9-11e8-93ca-d5e4e13413cf', 1, 2, '互联网', 'oodE244WfcWaQMDW1lWpDveVIkr8', '9b367b20-55e9-11e8-90ff-0ddf17cf0d65', NULL, 135, 2, 7, 2, NULL, '2018-05-12 13:39:59'),
('a633d380-56af-11e8-93a0-219230e0c422', 2, 2, '点评点评妈妈，我为您骄傲', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 18, 0, 1, 0, 'd7311fb0-56aa-11e8-890b-8f367fca63dd', '2018-05-13 13:15:04'),
('a9dd54a0-551c-11e8-9ee3-67c9c4ad864e', 2, 2, '点评好心就有好报吗？', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', 'e605d520-551b-11e8-90ff-0ddf17cf0d65', NULL, 59, 0, 0, 0, 'eff4b5b0-551b-11e8-9910-134ce1212049', '2018-05-11 13:11:41'),
('aa6fa100-5776-11e8-b925-4b1e4e094eb9', 2, 2, '点评如果我中一个亿', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', 'ea8cdb50-5775-11e8-8f91-03fb447cdf91', NULL, 75, 1, 2, 0, 'f3b8ba00-5775-11e8-a4d3-61ed6d13c436', '2018-05-14 13:01:18'),
('ab183b10-551b-11e8-9910-134ce1212049', 2, 2, '点评如果我只剩一天可活', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 54, 1, 2, 0, '6ebf4e00-5517-11e8-a343-d55afeb2c4c0', '2018-05-11 13:03:16'),
('adb82730-5774-11e8-a4d3-61ed6d13c436', 2, 2, '点评如果我失去了四肢', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 'dd90a5a0-5773-11e8-8f91-03fb447cdf91', NULL, 72, 0, 1, 0, 'e7238380-5773-11e8-b925-4b1e4e094eb9', '2018-05-14 12:46:40'),
('ae304090-5778-11e8-b652-279c90dc66b5', 1, 2, '自信与自负', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 'a4fdd230-5778-11e8-8f91-03fb447cdf91', NULL, 133, 0, 1, 1, NULL, '2018-05-14 13:16:26'),
('ae36b1c0-551e-11e8-9910-134ce1212049', 1, 2, '可以说谎吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 'a41f88b0-551e-11e8-90ff-0ddf17cf0d65', NULL, 135, 0, 4, 1, NULL, '2018-05-11 13:27:08'),
('ae776440-551e-11e8-9ee3-67c9c4ad864e', 1, 2, '可以说谎吗？', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', 'a41f88b0-551e-11e8-90ff-0ddf17cf0d65', NULL, 135, 1, 5, 1, NULL, '2018-05-11 13:27:45'),
('ae8eb440-5778-11e8-af7e-2f89da9bb0c8', 1, 2, '自信与自负', 'oodE24wu-BxDuyYQD4ByKB6gJZFQ', 'a4fdd230-5778-11e8-8f91-03fb447cdf91', NULL, 135, 0, 2, 1, NULL, '2018-05-14 13:16:27'),
('b01734b0-55e6-11e8-97f2-fbf230fbc87a', 2, 2, '点评人生没有白走的路', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 58, 0, 3, 0, '8dcf87a0-55e5-11e8-8384-d1d3ebf030ca', '2018-05-12 13:16:32'),
('b25ce970-56ab-11e8-890b-8f367fca63dd', 1, 2, '妈妈，您最棒', 'oodE24zH4t3nF1wBGw1UGagJBhTE', 'a888bcd0-56ab-11e8-8f91-03fb447cdf91', NULL, 135, 2, 7, 0, NULL, '2018-05-13 12:49:15'),
('b2eee180-56b1-11e8-8101-993cac4b95f8', 2, 2, '点评妈妈，您最棒', 'oodE24_KvBCV4H9d1f43avoaezRE', '', NULL, 65, 0, 9, 0, '5f277d60-56ab-11e8-b3e5-41b5ff6336c1', '2018-05-13 13:29:45'),
('b3b2a9e0-56b5-11e8-839b-45ce5a583179', 2, 2, '点评点评妈妈，我爱您', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 6, 0, 0, 0, 'd2e4b9e0-56b3-11e8-b3e5-41b5ff6336c1', '2018-05-13 13:58:24'),
('b4492600-551f-11e8-b3d3-c74caf6ea6d8', 2, 2, '点评如果我失去了四肢', 'oodE24_KvBCV4H9d1f43avoaezRE', '', NULL, 82, 1, 2, 0, '61347340-551d-11e8-9910-134ce1212049', '2018-05-11 13:32:10'),
('b5d77f70-5525-11e8-98d8-2b4dccb0c246', 2, 2, '点评点评我的同学', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 7, 0, 0, 0, '953e6cc0-5524-11e8-b79a-af54a0ab8604', '2018-05-11 14:15:09'),
('b8743640-5518-11e8-af10-add43a8e2a27', 1, 2, '好同事，坏同事', 'oodE24zH4t3nF1wBGw1UGagJBhTE', 'aec2acd0-5518-11e8-90ff-0ddf17cf0d65', NULL, 122, 2, 8, 2, NULL, '2018-05-11 12:44:31'),
('b8d1fdd0-56b1-11e8-86f0-71fcc3b100b9', 1, 2, '我的妈妈', 'oodE24_7jIys881HhvYPIjCBfQXc', NULL, '', 318, 3, 13, 1, NULL, '2018-05-13 13:29:59'),
('b8f23560-5453-11e8-990e-2bfb740868ba', 1, 2, '包容', 'oodE24_7jIys881HhvYPIjCBfQXc', 'b2b75c20-5453-11e8-90ff-0ddf17cf0d65', NULL, 135, 1, 10, 1, NULL, '2018-05-10 13:14:18'),
('b9372da0-5453-11e8-a34d-593abcea7197', 1, 2, '包容', 'oodE24_xgy8EdCX7e16zpUMd9Byw', 'b2b75c20-5453-11e8-90ff-0ddf17cf0d65', NULL, 59, 0, 0, 1, NULL, '2018-05-10 13:13:04'),
('b9c5e6c0-551c-11e8-9910-134ce1212049', 2, 2, '点评好心就有好报吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 'e605d520-551b-11e8-90ff-0ddf17cf0d65', NULL, 62, 0, 2, 0, 'efd2d5d0-551b-11e8-9ee3-67c9c4ad864e', '2018-05-11 13:11:54'),
('ba1c19e0-5518-11e8-8d62-6f1842cc6986', 1, 2, '好同事，坏同事', 'oodE248eP-Y1r8VAWg_VjvpjnqYs', 'aec2acd0-5518-11e8-90ff-0ddf17cf0d65', NULL, 21, 0, 1, 0, NULL, '2018-05-11 12:42:33'),
('bdfb4ec0-56ab-11e8-ae13-b9989da314f6', 1, 2, '母亲节感想', 'oodE24_KvBCV4H9d1f43avoaezRE', NULL, '', 185, 1, 4, 2, NULL, '2018-05-13 12:47:12'),
('befbb150-5446-11e8-99e7-87ba7c29b72a', 2, 2, '点评斜杠青年', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '6287a1e0-5446-11e8-90ff-0ddf17cf0d65', NULL, 85, 0, 0, 0, '68edd0e0-5446-11e8-a185-ad91398d26d9', '2018-05-10 11:40:34'),
('bf73a070-5446-11e8-a185-ad91398d26d9', 2, 2, '点评斜杠青年', 'oodE24_7jIys881HhvYPIjCBfQXc', '6287a1e0-5446-11e8-90ff-0ddf17cf0d65', NULL, 85, 0, 0, 0, '6918d880-5446-11e8-99e7-87ba7c29b72a', '2018-05-10 11:40:33'),
('c1f34350-55ef-11e8-aeef-cfd357e00ef9', 2, 2, '点评互联网', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 54, 0, 1, 1, 'a457d280-55e9-11e8-93ca-d5e4e13413cf', '2018-05-12 14:21:28'),
('ca544b50-5457-11e8-990e-2bfb740868ba', 2, 2, '点评如何锻炼思维', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 50, 1, 2, 1, '7966ecc0-5452-11e8-9954-05aae439de0d', '2018-05-10 13:41:07'),
('cfc92760-5455-11e8-b7a2-33879f705695', 1, 2, '积极主动', 'oodE240QoAfITCARm0JM7e-TBJx0', 'c9344740-5455-11e8-90ff-0ddf17cf0d65', NULL, 135, 2, 11, 2, NULL, '2018-05-10 13:29:16'),
('d0cd50f0-5455-11e8-990e-2bfb740868ba', 1, 2, '积极主动', 'oodE24_7jIys881HhvYPIjCBfQXc', 'c9344740-5455-11e8-90ff-0ddf17cf0d65', NULL, 131, 1, 5, 1, NULL, '2018-05-10 13:29:15'),
('d14ca400-545e-11e8-9ddd-d955f954df58', 2, 2, '点评点评时代潮流', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 19, 0, 1, 0, '13aec540-545e-11e8-b630-d3846e0666a3', '2018-05-10 14:31:25'),
('d27d5ba0-56aa-11e8-9765-65c57bedd5f5', 2, 2, '点评妈妈，我为您骄傲', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '1d14c690-56aa-11e8-8f91-03fb447cdf91', NULL, 71, 0, 0, 0, '26a97930-56aa-11e8-890b-8f367fca63dd', '2018-05-13 12:41:42'),
('d2e4b9e0-56b3-11e8-b3e5-41b5ff6336c1', 2, 2, '点评妈妈，我爱您', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '', NULL, 54, 1, 2, 1, '7a6f33d0-56a9-11e8-9765-65c57bedd5f5', '2018-05-13 13:45:26'),
('d6735120-56ae-11e8-86f0-71fcc3b100b9', 2, 2, '点评2018-05-13 20:07:37', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 79, 0, 4, 0, '2ef33210-56a6-11e8-b9d9-e533eba34652', '2018-05-13 13:09:16'),
('d7311fb0-56aa-11e8-890b-8f367fca63dd', 2, 2, '点评妈妈，我为您骄傲', 'oodE24zH4t3nF1wBGw1UGagJBhTE', '1d14c690-56aa-11e8-8f91-03fb447cdf91', NULL, 75, 1, 4, 1, '26826930-56aa-11e8-9765-65c57bedd5f5', '2018-05-13 12:42:05'),
('d75528c0-5776-11e8-bdcc-81a2ce2f3192', 1, 2, '过去的就让它过去吧', 'oodE24_7jIys881HhvYPIjCBfQXc', 'cdd6bd40-5776-11e8-8f91-03fb447cdf91', NULL, 135, 0, 1, 0, NULL, '2018-05-14 13:03:15'),
('dbe6f3c0-55f3-11e8-aeef-cfd357e00ef9', 2, 2, '点评互联网', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 89, 0, 0, 0, 'a457d280-55e9-11e8-93ca-d5e4e13413cf', '2018-05-12 14:50:49'),
('dcb66e10-577a-11e8-a7d9-ef4995ef4f6c', 2, 2, '点评良师益友', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '6888c2e0-577a-11e8-8f91-03fb447cdf91', NULL, 7, 0, 0, 0, '72347ff0-577a-11e8-af7e-2f89da9bb0c8', '2018-05-14 13:29:52'),
('de6ba0a0-55e4-11e8-8384-d1d3ebf030ca', 2, 2, '点评我爸', 'oodE2453Wmjn8UdgqAGxDQ-LisrY', '7f9166a0-55e4-11e8-90ff-0ddf17cf0d65', NULL, 4, 0, 1, 0, '897523a0-55e4-11e8-abe6-d53d57b61583', '2018-05-12 13:03:34'),
('de8d5ca0-55e8-11e8-87ab-210c6ebd5366', 2, 2, '点评人生没有白走的路', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 55, 0, 0, 0, '8dd94ba0-55e5-11e8-abe6-d53d57b61583', '2018-05-12 13:32:11'),
('e41a1b80-56ac-11e8-bf48-f7919cf2cee0', 2, 2, '点评妈妈，您最棒', 'oodE240QoAfITCARm0JM7e-TBJx0', '', NULL, 73, 1, 3, 1, '9c8dd510-56aa-11e8-af7b-51a2faa76e8e', '2018-05-13 12:55:25'),
('e4c7b1d0-5776-11e8-a4d3-61ed6d13c436', 2, 2, '点评如果我中一个亿', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 'ea8cdb50-5775-11e8-8f91-03fb447cdf91', NULL, 71, 0, 2, 0, 'f42ab5b0-5775-11e8-b925-4b1e4e094eb9', '2018-05-14 13:02:34'),
('e53b29a0-56b1-11e8-8075-7f51600de952', 2, 2, '点评妈妈，您最棒', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 13, 0, 10, 0, '5f277d60-56ab-11e8-b3e5-41b5ff6336c1', '2018-05-13 13:31:09'),
('e6aceca0-56b2-11e8-8075-7f51600de952', 2, 2, '点评母亲节感想', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 38, 1, 3, 0, 'bdfb4ec0-56ab-11e8-ae13-b9989da314f6', '2018-05-13 13:38:21'),
('e6fc4c70-5773-11e8-a4d3-61ed6d13c436', 1, 2, '如果我失去了四肢', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 'dd90a5a0-5773-11e8-8f91-03fb447cdf91', NULL, 132, 0, 0, 1, NULL, '2018-05-14 12:42:09'),
('e7238380-5773-11e8-b925-4b1e4e094eb9', 1, 2, '如果我失去了四肢', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', 'dd90a5a0-5773-11e8-8f91-03fb447cdf91', NULL, 132, 1, 2, 1, NULL, '2018-05-14 12:42:49'),
('eb2fccf0-5452-11e8-9954-05aae439de0d', 2, 2, '点评如何锻炼思维', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '7303a3f0-5452-11e8-90ff-0ddf17cf0d65', NULL, 70, 0, 2, 0, '797ac2e0-5452-11e8-a34d-593abcea7197', '2018-05-10 13:07:27'),
('ed7a7380-56b3-11e8-86f0-71fcc3b100b9', 2, 2, '点评妈妈，您最棒', 'oodE24_7jIys881HhvYPIjCBfQXc', '', NULL, 56, 0, 1, 0, '9ae53150-56ae-11e8-ae86-61807e3ade8e', '2018-05-13 13:45:42'),
('ef540180-551e-11e8-b659-31b7a4bf957e', 2, 2, '点评如果我失去了四肢', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 67, 0, 1, 0, '67910550-551d-11e8-9ee3-67c9c4ad864e', '2018-05-11 13:26:39'),
('efd2d5d0-551b-11e8-9ee3-67c9c4ad864e', 1, 2, '好心就有好报吗？', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', 'e605d520-551b-11e8-90ff-0ddf17cf0d65', NULL, 135, 1, 1, 1, NULL, '2018-05-11 13:08:08'),
('eff4b5b0-551b-11e8-9910-134ce1212049', 1, 2, '好心就有好报吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 'e605d520-551b-11e8-90ff-0ddf17cf0d65', NULL, 135, 0, 1, 1, NULL, '2018-05-11 13:07:30'),
('f23d8890-56ad-11e8-8083-1fcf4da48599', 2, 2, '点评妈妈，我想对你说', 'oodE24_KvBCV4H9d1f43avoaezRE', '', NULL, 85, 0, 3, 0, '52263740-56ac-11e8-af7b-51a2faa76e8e', '2018-05-13 13:02:54'),
('f3b79ae0-56ac-11e8-9765-65c57bedd5f5', 2, 2, '点评2018-05-13 20:07:37', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '', NULL, 101, 0, 6, 0, '2ef33210-56a6-11e8-b9d9-e533eba34652', '2018-05-13 12:55:48'),
('f3b8ba00-5775-11e8-a4d3-61ed6d13c436', 1, 2, '如果我中一个亿', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 'ea8cdb50-5775-11e8-8f91-03fb447cdf91', NULL, 135, 0, 0, 2, NULL, '2018-05-14 12:56:55'),
('f42ab5b0-5775-11e8-b925-4b1e4e094eb9', 1, 2, '如果我中一个亿', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', 'ea8cdb50-5775-11e8-8f91-03fb447cdf91', NULL, 134, 0, 0, 1, NULL, '2018-05-14 12:57:30'),
('f6627290-541a-11e8-a0aa-f962afe5e119', 2, 2, '点评如何过一天', 'oodE24_7jIys881HhvYPIjCBfQXc', 'd44b07d0-541a-11e8-90ff-0ddf17cf0d65', NULL, 10, 0, 0, 0, 'dab814a0-541a-11e8-8dc5-e3bd502e3ccf', '2018-05-10 06:25:56'),
('fc641360-541a-11e8-8dc5-e3bd502e3ccf', 2, 2, '点评如何过一天', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 'd44b07d0-541a-11e8-90ff-0ddf17cf0d65', NULL, 8, 0, 0, 0, 'da921610-541a-11e8-a0aa-f962afe5e119', '2018-05-10 06:25:59');

-- --------------------------------------------------------

--
-- 表的结构 `impromptu_audio_like`
--

CREATE TABLE `impromptu_audio_like` (
  `audio_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '音频ID',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '点赞用户ID',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `impromptu_audio_like`
--

INSERT INTO `impromptu_audio_like` (`audio_id`, `user_id`, `create_date`) VALUES
('cfc92760-5455-11e8-b7a2-33879f705695', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-10 13:48:51'),
('ca544b50-5457-11e8-990e-2bfb740868ba', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-10 13:57:42'),
('11732e20-5453-11e8-990e-2bfb740868ba', 'oodE2446_2S2sXsh2o2Y8CbtGlxQ', '2018-05-10 13:58:11'),
('7966ecc0-5452-11e8-9954-05aae439de0d', 'oodE245N8LBvC0sRYoz9HYcSqsEU', '2018-05-10 13:58:19'),
('b8f23560-5453-11e8-990e-2bfb740868ba', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-10 14:02:15'),
('7e446e00-5454-11e8-b7a2-33879f705695', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-10 14:02:24'),
('7e0e42d0-5454-11e8-990e-2bfb740868ba', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-10 14:02:37'),
('797ac2e0-5452-11e8-a34d-593abcea7197', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-10 14:08:57'),
('7907d8a0-5459-11e8-8b54-3bca526701b0', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-10 14:16:21'),
('7e0e42d0-5454-11e8-990e-2bfb740868ba', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-10 14:16:50'),
('7907d8a0-5459-11e8-8b54-3bca526701b0', 'oodE248iGhqQYEOCD7AhqQUNflTQ', '2018-05-10 14:19:37'),
('13aec540-545e-11e8-b630-d3846e0666a3', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-10 14:35:58'),
('7e446e00-5454-11e8-b7a2-33879f705695', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-11 01:04:32'),
('d0cd50f0-5455-11e8-990e-2bfb740868ba', 'oodE246eooRLKYFY4w_PlsKX-xDE', '2018-05-11 10:35:48'),
('7907d8a0-5459-11e8-8b54-3bca526701b0', 'oodE246eooRLKYFY4w_PlsKX-xDE', '2018-05-11 10:35:54'),
('2d0c0a60-5518-11e8-a343-d55afeb2c4c0', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-11 12:58:23'),
('b8743640-5518-11e8-af10-add43a8e2a27', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-11 13:12:03'),
('ab183b10-551b-11e8-9910-134ce1212049', 'oodE24_KvBCV4H9d1f43avoaezRE', '2018-05-11 13:12:21'),
('a3e1d8e0-551d-11e8-b3d3-c74caf6ea6d8', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-11 13:19:31'),
('67910550-551d-11e8-9ee3-67c9c4ad864e', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-11 13:23:19'),
('6e608c30-5517-11e8-9c80-876d99b5e61b', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-11 13:28:41'),
('2ebbdd40-5518-11e8-afdf-eb99a4b39837', 'oodE24zH4t3nF1wBGw1UGagJBhTE', '2018-05-11 13:33:38'),
('b4492600-551f-11e8-b3d3-c74caf6ea6d8', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-11 13:35:12'),
('2ebbdd40-5518-11e8-afdf-eb99a4b39837', 'oodE244wADUiyy3aS2cdOAMAweoM', '2018-05-11 14:03:01'),
('953e6cc0-5524-11e8-b79a-af54a0ab8604', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-11 14:14:42'),
('2ebbdd40-5518-11e8-afdf-eb99a4b39837', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-12 10:08:42'),
('8dcf87a0-55e5-11e8-8384-d1d3ebf030ca', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-12 13:22:51'),
('a457d280-55e9-11e8-93ca-d5e4e13413cf', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-12 14:01:06'),
('8dd94ba0-55e5-11e8-abe6-d53d57b61583', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-12 14:08:34'),
('a457d280-55e9-11e8-93ca-d5e4e13413cf', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-12 14:21:33'),
('72d17270-55e9-11e8-93ca-d5e4e13413cf', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-12 14:33:43'),
('b8743640-5518-11e8-af10-add43a8e2a27', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-12 14:41:51'),
('ae776440-551e-11e8-9ee3-67c9c4ad864e', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 01:47:53'),
('efd2d5d0-551b-11e8-9ee3-67c9c4ad864e', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 01:48:17'),
('2d0c0a60-5518-11e8-a343-d55afeb2c4c0', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 01:48:35'),
('cfc92760-5455-11e8-b7a2-33879f705695', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 01:48:54'),
('b25ce970-56ab-11e8-890b-8f367fca63dd', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 12:50:11'),
('5f277d60-56ab-11e8-b3e5-41b5ff6336c1', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 12:50:21'),
('bdfb4ec0-56ab-11e8-ae13-b9989da314f6', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 12:50:32'),
('604b8b00-56ab-11e8-bf48-f7919cf2cee0', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 12:50:39'),
('604b8b00-56ab-11e8-bf48-f7919cf2cee0', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 12:50:43'),
('2ef33210-56a6-11e8-b9d9-e533eba34652', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 12:53:50'),
('604b8b00-56ab-11e8-bf48-f7919cf2cee0', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-13 12:56:50'),
('2ef33210-56a6-11e8-b9d9-e533eba34652', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-13 13:01:01'),
('604b8b00-56ab-11e8-bf48-f7919cf2cee0', 'oodE24_KvBCV4H9d1f43avoaezRE', '2018-05-13 13:05:43'),
('5f277d60-56ab-11e8-b3e5-41b5ff6336c1', 'oodE240QoAfITCARm0JM7e-TBJx0', '2018-05-13 13:06:26'),
('e41a1b80-56ac-11e8-bf48-f7919cf2cee0', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 13:13:37'),
('d7311fb0-56aa-11e8-890b-8f367fca63dd', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 13:14:38'),
('2ef33210-56a6-11e8-b9d9-e533eba34652', 'oodE240QoAfITCARm0JM7e-TBJx0', '2018-05-13 13:15:30'),
('9c8dd510-56aa-11e8-af7b-51a2faa76e8e', 'oodE24_KvBCV4H9d1f43avoaezRE', '2018-05-13 13:15:53'),
('835cc240-56af-11e8-8083-1fcf4da48599', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 13:17:29'),
('5f277d60-56ab-11e8-b3e5-41b5ff6336c1', 'oodE24_KvBCV4H9d1f43avoaezRE', '2018-05-13 13:23:46'),
('9ae53150-56ae-11e8-ae86-61807e3ade8e', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 13:23:55'),
('7a6f33d0-56a9-11e8-9765-65c57bedd5f5', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-13 13:30:07'),
('b8d1fdd0-56b1-11e8-86f0-71fcc3b100b9', 'oodE24_KvBCV4H9d1f43avoaezRE', '2018-05-13 13:36:50'),
('26a97930-56aa-11e8-890b-8f367fca63dd', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 13:38:35'),
('92a838c0-56a9-11e8-890b-8f367fca63dd', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 13:38:49'),
('5f277d60-56ab-11e8-b3e5-41b5ff6336c1', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 13:39:44'),
('b25ce970-56ab-11e8-890b-8f367fca63dd', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-13 13:47:07'),
('b8d1fdd0-56b1-11e8-86f0-71fcc3b100b9', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 13:47:48'),
('e6aceca0-56b2-11e8-8075-7f51600de952', 'oodE24_KvBCV4H9d1f43avoaezRE', '2018-05-13 13:52:01'),
('9ae53150-56ae-11e8-ae86-61807e3ade8e', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 13:56:39'),
('d2e4b9e0-56b3-11e8-b3e5-41b5ff6336c1', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 13:58:14'),
('9bfe6980-56ae-11e8-bf48-f7919cf2cee0', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 14:06:02'),
('9bfe6980-56ae-11e8-bf48-f7919cf2cee0', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 14:50:53'),
('52263740-56ac-11e8-af7b-51a2faa76e8e', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 14:50:57'),
('26826930-56aa-11e8-9765-65c57bedd5f5', 'oodE245BKxqphweRi3ESOc9KHxRM', '2018-05-13 16:35:57'),
('b8d1fdd0-56b1-11e8-86f0-71fcc3b100b9', 'oodE2425f3mVNVD061s7C-0Ov4sQ', '2018-05-14 04:19:31'),
('e7238380-5773-11e8-b925-4b1e4e094eb9', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-14 12:52:45'),
('aa6fa100-5776-11e8-b925-4b1e4e094eb9', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-14 13:05:15'),
('37d2eb80-5775-11e8-b925-4b1e4e094eb9', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-14 13:07:33');

-- --------------------------------------------------------

--
-- 表的结构 `impromptu_dialog`
--

CREATE TABLE `impromptu_dialog` (
  `dialog_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '对话ID',
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房间号',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `comment` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发言内容',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `impromptu_room`
--

CREATE TABLE `impromptu_room` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房间号',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始日期',
  `end_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束时间',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动标题',
  `notice` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告',
  `survey_status` int(2) NOT NULL DEFAULT '1' COMMENT '投票状态(1未发起,2已发起,3已完成)',
  `max_amount` int(10) NOT NULL COMMENT '最大报名人数',
  `people_amount` int(10) NOT NULL DEFAULT '0' COMMENT '报名人数',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `impromptu_survey`
--

CREATE TABLE `impromptu_survey` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房间号',
  `meeting_user` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '可投票的用户信息',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='问卷';

-- --------------------------------------------------------

--
-- 表的结构 `impromptu_vote`
--

CREATE TABLE `impromptu_vote` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房间号',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `best_speaker` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '最佳演讲者',
  `best_evaluator` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '最佳点评人',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `meeting_apply`
--

CREATE TABLE `meeting_apply` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房间号',
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '演讲者' COMMENT '会议角色',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='报名表';

-- --------------------------------------------------------

--
-- 表的结构 `meeting_apply_pre`
--

CREATE TABLE `meeting_apply_pre` (
  `user_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `meeting_day` int(1) NOT NULL COMMENT '会议日期',
  `apply_time` int(2) NOT NULL COMMENT '会议场次',
  `role_type` int(1) NOT NULL COMMENT '角色类型（1、演讲者；2、主持人）',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='预报名表';

-- --------------------------------------------------------

--
-- 表的结构 `meeting_record`
--

CREATE TABLE `meeting_record` (
  `meeting_date` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_time` int(4) NOT NULL DEFAULT '21',
  `room_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_host` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会议组织情况';

-- --------------------------------------------------------

--
-- 表的结构 `new_comment`
--

CREATE TABLE `new_comment` (
  `audio_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '点评音频ID',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '被点评人ID',
  `comment_type` int(5) NOT NULL DEFAULT '1' COMMENT '消息类型（1、点赞；2、点评）',
  `comment_user_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '点评人',
  `audio_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '被点评音频的标题',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `new_comment`
--

INSERT INTO `new_comment` (`audio_id`, `user_id`, `comment_type`, `comment_user_id`, `audio_name`, `create_date`) VALUES
('a457d280-55e9-11e8-93ca-d5e4e13413cf', 'oodE244WfcWaQMDW1lWpDveVIkr8', 1, 'oodE24_7jIys881HhvYPIjCBfQXc', '互联网', '2018-05-12 14:21:33'),
('72d17270-55e9-11e8-93ca-d5e4e13413cf', 'oodE244WfcWaQMDW1lWpDveVIkr8', 1, 'oodE24_7jIys881HhvYPIjCBfQXc', '点评旅行中的意外', '2018-05-12 14:33:43'),
('dbe6f3c0-55f3-11e8-aeef-cfd357e00ef9', 'oodE244WfcWaQMDW1lWpDveVIkr8', 2, 'oodE24_7jIys881HhvYPIjCBfQXc', '互联网', '2018-05-12 14:50:49'),
('2ef33210-56a6-11e8-b9d9-e533eba34652', 'oodE245tpxdouyL9TZhQSt7jEruo', 1, 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-13 20:07:37', '2018-05-13 12:53:50'),
('2ef33210-56a6-11e8-b9d9-e533eba34652', 'oodE245tpxdouyL9TZhQSt7jEruo', 1, 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-13 20:07:37', '2018-05-13 13:01:01'),
('e41a1b80-56ac-11e8-bf48-f7919cf2cee0', 'oodE240QoAfITCARm0JM7e-TBJx0', 1, 'oodE24_7jIys881HhvYPIjCBfQXc', '点评妈妈，您最棒', '2018-05-13 13:13:37'),
('97b0c4d0-56af-11e8-86f0-71fcc3b100b9', 'oodE240QoAfITCARm0JM7e-TBJx0', 2, 'oodE24_7jIys881HhvYPIjCBfQXc', '点评妈妈，您最棒', '2018-05-13 13:14:40'),
('2ef33210-56a6-11e8-b9d9-e533eba34652', 'oodE245tpxdouyL9TZhQSt7jEruo', 1, 'oodE240QoAfITCARm0JM7e-TBJx0', '2018-05-13 20:07:37', '2018-05-13 13:15:30'),
('164036a0-56b0-11e8-b3e5-41b5ff6336c1', 'oodE240QoAfITCARm0JM7e-TBJx0', 2, 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '妈妈，您最棒', '2018-05-13 13:18:21'),
('9b5b39c0-56b0-11e8-b3e5-41b5ff6336c1', 'oodE240QoAfITCARm0JM7e-TBJx0', 2, 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '妈妈，您最棒', '2018-05-13 13:22:16'),
('9ae53150-56ae-11e8-ae86-61807e3ade8e', 'oodE24-qVk9InEWRSSSje9N6vtxc', 1, 'oodE24_7jIys881HhvYPIjCBfQXc', '妈妈，您最棒', '2018-05-13 13:23:55'),
('58a0a2d0-56b2-11e8-8075-7f51600de952', 'oodE240QoAfITCARm0JM7e-TBJx0', 2, 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '妈妈，您最棒', '2018-05-13 13:34:23'),
('5f277d60-56ab-11e8-b3e5-41b5ff6336c1', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', 1, 'oodE24_7jIys881HhvYPIjCBfQXc', '妈妈，您最棒', '2018-05-13 13:39:44'),
('ed7a7380-56b3-11e8-86f0-71fcc3b100b9', 'oodE24-qVk9InEWRSSSje9N6vtxc', 2, 'oodE24_7jIys881HhvYPIjCBfQXc', '妈妈，您最棒', '2018-05-13 13:45:42'),
('9ae53150-56ae-11e8-ae86-61807e3ade8e', 'oodE24-qVk9InEWRSSSje9N6vtxc', 1, 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '妈妈，您最棒', '2018-05-13 13:56:39'),
('d2e4b9e0-56b3-11e8-b3e5-41b5ff6336c1', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', 1, 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '点评妈妈，我爱您', '2018-05-13 13:58:14'),
('b3b2a9e0-56b5-11e8-839b-45ce5a583179', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', 2, 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '点评妈妈，我爱您', '2018-05-13 13:58:24'),
('9bfe6980-56ae-11e8-bf48-f7919cf2cee0', 'oodE240QoAfITCARm0JM7e-TBJx0', 1, 'oodE24_7jIys881HhvYPIjCBfQXc', '妈妈，您最棒', '2018-05-13 14:06:02'),
('9bfe6980-56ae-11e8-bf48-f7919cf2cee0', 'oodE240QoAfITCARm0JM7e-TBJx0', 1, 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '妈妈，您最棒', '2018-05-13 14:50:53');

-- --------------------------------------------------------

--
-- 表的结构 `room_impromptu`
--

CREATE TABLE `room_impromptu` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房间号',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT '语言(1中文,2英文)',
  `mode` int(2) NOT NULL DEFAULT '1' COMMENT '模式(1普通,2疯狂,3娱乐,4对抗)',
  `start_date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '开始日期',
  `start_time` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '开始时间',
  `end_time` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '结束时间',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动标题',
  `notice` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告',
  `survey_status` int(2) NOT NULL DEFAULT '1' COMMENT '投票状态(1未发起,2已发起,3已完成)',
  `max_amount` int(10) NOT NULL COMMENT '最大报名人数',
  `people_amount` int(10) NOT NULL DEFAULT '0' COMMENT '报名人数',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `speech_name_evaluate`
--

CREATE TABLE `speech_name_evaluate` (
  `speech_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '演讲题目',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '点评用户ID',
  `level` int(5) NOT NULL COMMENT '挑战指数',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `speech_name_evaluate`
--

INSERT INTO `speech_name_evaluate` (`speech_name`, `user_id`, `level`, `create_date`) VALUES
('人工智能', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 09:41:40'),
('勇气', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 09:43:36'),
('宿命', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 10:15:38'),
('上当', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:58:42'),
('上班路上', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:58:49'),
('上瘾', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:58:55'),
('下班以后', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:58:58'),
('为什么大家都喜欢我', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 12:59:06'),
('人生没有白走的路', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:10'),
('出门一脚踩到屎', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 5, '2018-04-25 12:59:14'),
('创业', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:19'),
('勇气', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:21'),
('及格', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:23'),
('回家', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:25'),
('奖金', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:28'),
('好同事，坏同事', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 12:59:31'),
('上当', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:51:40'),
('上班路上', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:51:46'),
('上瘾', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:51:55'),
('下班以后', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:52:00'),
('为什么大家都喜欢我', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:52:08'),
('人生没有白走的路', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:52:13'),
('减法人生', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:52:20'),
('出门一脚踩到屎', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:52:27'),
('创业', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:52:32'),
('加法人生', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:52:45'),
('及格', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:53:02'),
('回家', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:53:23'),
('奖金', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:53:36'),
('好同事，坏同事', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:53:41'),
('如何过一天', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:54:01'),
('家常菜', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:54:29'),
('工作效率', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:54:44'),
('工作的意义', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:54:49'),
('成绩', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:55:00'),
('我不在乎', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:55:20'),
('我不怕丢脸，我没有脸', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:55:30'),
('我不是人', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:55:40'),
('我也没啥，就是基因比较好', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:56:04'),
('我只是活得比较年轻', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:56:09'),
('我妈', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:56:16'),
('我希望的生活', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:56:43'),
('我是（男神/女神）', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:56:50'),
('我是小强', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:56:55'),
('我有一个愿望', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:57:00'),
('我有一点牛逼', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:57:04'),
('我爸', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:57:15'),
('我的同学', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:57:31'),
('我的工作', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:57:51'),
('我的正能量有点多', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:57:54'),
('我的爱好', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:58:03'),
('我的生活态度', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:58:08'),
('我的童年', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:58:12'),
('我的缺点', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:58:40'),
('我的老师', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:58:50'),
('我的领导', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:59:09'),
('打发无聊', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:59:32'),
('教练与导师的区别', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:59:47'),
('早起的鸟儿', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:59:55'),
('时代', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 15:00:09'),
('时代潮流', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 15:00:21'),
('终身学习', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 15:00:27'),
('谁（娶到/嫁给）我就赚到了', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 15:00:44'),
('青春', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 15:00:55'),
('马云想请我吃饭，真没时间', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 15:01:24'),
('减法人生', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 16:01:12'),
('加法人生', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 16:01:15'),
('如何过一天', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:21'),
('家常菜', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 16:01:25'),
('宿命', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:01:31'),
('工作效率', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:34'),
('工作的意义', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:36'),
('成绩', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:37'),
('我不在乎', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:39'),
('我不怕丢脸，我没有脸', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:45'),
('我不是人', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:01:50'),
('我也没啥，就是基因比较好', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:00'),
('我只是活得比较年轻', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:04'),
('我妈', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:08'),
('我希望的生活', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:10'),
('我是（男神/女神）', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:12'),
('我是小强', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:15'),
('我有一个愿望', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:17'),
('我有一点牛逼', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:21'),
('我爸', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:23'),
('我的同学', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:25'),
('我的工作', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:27'),
('我的正能量有点多', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:31'),
('我的爱好', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:33'),
('我的生活态度', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:35'),
('我的童年', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:37'),
('我的缺点', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:40'),
('我的老师', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:44'),
('AI老师', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:32:07'),
('PDCA', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:32:16'),
('SWOT', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-27 10:32:45'),
('一切都是最好的安排', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-27 10:32:53'),
('一棵树', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:33:08'),
('不买最好，只买最贵', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-27 10:33:28'),
('不想当将军的士兵', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 10:34:10'),
('丑小鸭', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:34:42'),
('事实胜于雄辩吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:36:10'),
('互联网', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:01:46'),
('产品思维', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:02:11'),
('产品经理', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:02:16'),
('人与人是不同的吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:02:52'),
('人为什么会恐惧', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-27 11:03:50'),
('人性本善还是人性本恶？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:04:05'),
('人类有一天会灭亡吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-27 11:04:42'),
('人该不该我行我素？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:05:30'),
('人该知足还是不知足？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:06:42'),
('什么是男女平等？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:06:54'),
('以终为始', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:08:48'),
('以身作则', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:16:09'),
('价格是什么？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:17:07'),
('冥想', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:17:14'),
('冲突', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:17:38'),
('凡勃伦效应', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 5, '2018-04-27 11:17:44'),
('分享', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:18:10'),
('刻意练习', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:19:31'),
('加班', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:20:19'),
('包容', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-27 11:20:33'),
('华为', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:21:10'),
('卓越成效的管理者', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:21:50'),
('压力', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-27 11:22:23'),
('双赢思维', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-27 11:22:48'),
('可以说谎吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:23:54'),
('合作共享', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:24:43'),
('后悔有用吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:26:46'),
('呼吸', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:28:06'),
('压力山大', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:32:34'),
('团队', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:36:30'),
('在线演讲', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:52:55'),
('好心就有好报吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:06:36'),
('如何锻炼思维', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:07:48'),
('如果我中一个亿', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:08:44'),
('如果我只剩一天可活', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:10:12'),
('如果我失去了四肢', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:10:39'),
('存在的就是合理的吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-28 12:39:43'),
('小打卡', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-28 12:40:31'),
('少就是多', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-28 12:40:39'),
('干一行爱一行 VS 爱一行干一行', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-28 12:41:17'),
('影响力', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-28 12:43:21'),
('微习惯', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-28 12:44:14'),
('微信', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-28 12:45:01'),
('怎样用十块钱过一天', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-28 12:46:24'),
('AI老师', 'ojVEl0Rekx0CXNXM4f4z35vGinG8', 0, '2018-04-28 19:35:56'),
('公共汽车', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-29 12:54:40'),
('人工智能', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 09:41:40'),
('勇气', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 09:43:36'),
('宿命', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 10:15:38'),
('上当', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:58:42'),
('上班路上', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:58:49'),
('上瘾', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:58:55'),
('下班以后', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:58:58'),
('为什么大家都喜欢我', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 12:59:06'),
('人生没有白走的路', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:10'),
('出门一脚踩到屎', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 5, '2018-04-25 12:59:14'),
('创业', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:19'),
('勇气', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:21'),
('及格', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:23'),
('回家', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:25'),
('奖金', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 12:59:28'),
('好同事，坏同事', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 12:59:31'),
('上当', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:51:40'),
('上班路上', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:51:46'),
('上瘾', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:51:55'),
('下班以后', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:52:00'),
('为什么大家都喜欢我', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:52:08'),
('人生没有白走的路', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:52:13'),
('减法人生', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:52:20'),
('出门一脚踩到屎', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:52:27'),
('创业', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:52:32'),
('加法人生', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:52:45'),
('及格', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:53:02'),
('回家', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:53:23'),
('奖金', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:53:36'),
('好同事，坏同事', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:53:41'),
('如何过一天', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:54:01'),
('家常菜', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:54:29'),
('工作效率', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:54:44'),
('工作的意义', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:54:49'),
('成绩', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:55:00'),
('我不在乎', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:55:20'),
('我不怕丢脸，我没有脸', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:55:30'),
('我不是人', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:55:40'),
('我也没啥，就是基因比较好', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:56:04'),
('我只是活得比较年轻', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:56:09'),
('我妈', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:56:16'),
('我希望的生活', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:56:43'),
('我是（男神/女神）', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:56:50'),
('我是小强', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:56:55'),
('我有一个愿望', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:57:00'),
('我有一点牛逼', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:57:04'),
('我爸', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:57:15'),
('我的同学', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:57:31'),
('我的工作', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:57:51'),
('我的正能量有点多', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:57:54'),
('我的爱好', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:58:03'),
('我的生活态度', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 14:58:08'),
('我的童年', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:58:12'),
('我的缺点', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:58:40'),
('我的老师', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:58:50'),
('我的领导', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 14:59:09'),
('打发无聊', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-25 14:59:32'),
('教练与导师的区别', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:59:47'),
('早起的鸟儿', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 14:59:55'),
('时代', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 15:00:09'),
('时代潮流', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 15:00:21'),
('终身学习', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-25 15:00:27'),
('谁（娶到/嫁给）我就赚到了', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 15:00:44'),
('青春', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-25 15:00:55'),
('马云想请我吃饭，真没时间', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-25 15:01:24'),
('减法人生', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 16:01:12'),
('加法人生', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 16:01:15'),
('如何过一天', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:21'),
('家常菜', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 3, '2018-04-25 16:01:25'),
('宿命', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:01:31'),
('工作效率', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:34'),
('工作的意义', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:36'),
('成绩', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:37'),
('我不在乎', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:39'),
('我不怕丢脸，我没有脸', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:01:45'),
('我不是人', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:01:50'),
('我也没啥，就是基因比较好', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:00'),
('我只是活得比较年轻', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:04'),
('我妈', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:08'),
('我希望的生活', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:10'),
('我是（男神/女神）', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:12'),
('我是小强', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:15'),
('我有一个愿望', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:17'),
('我有一点牛逼', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:21'),
('我爸', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:23'),
('我的同学', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:25'),
('我的工作', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:27'),
('我的正能量有点多', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:31'),
('我的爱好', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:33'),
('我的生活态度', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:35'),
('我的童年', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:37'),
('我的缺点', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 2, '2018-04-25 16:02:40'),
('我的老师', 'ojVEl0dDlpiS7dS58LzoE--9nsRw', 4, '2018-04-25 16:02:44'),
('AI老师', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:32:07'),
('PDCA', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:32:16'),
('SWOT', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-27 10:32:45'),
('一切都是最好的安排', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-27 10:32:53'),
('一棵树', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:33:08'),
('不买最好，只买最贵', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-27 10:33:28'),
('不想当将军的士兵', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 10:34:10'),
('丑小鸭', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:34:42'),
('事实胜于雄辩吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 10:36:10'),
('互联网', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:01:46'),
('产品思维', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:02:11'),
('产品经理', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:02:16'),
('人与人是不同的吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:02:52'),
('人为什么会恐惧', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-27 11:03:50'),
('人性本善还是人性本恶？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:04:05'),
('人类有一天会灭亡吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-27 11:04:42'),
('人该不该我行我素？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:05:30'),
('人该知足还是不知足？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:06:42'),
('什么是男女平等？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:06:54'),
('以终为始', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:08:48'),
('以身作则', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:16:09'),
('价格是什么？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:17:07'),
('冥想', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:17:14'),
('冲突', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:17:38'),
('凡勃伦效应', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 5, '2018-04-27 11:17:44'),
('分享', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:18:10'),
('刻意练习', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:19:31'),
('加班', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:20:19'),
('包容', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-27 11:20:33'),
('华为', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:21:10'),
('卓越成效的管理者', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:21:50'),
('压力', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-27 11:22:23'),
('双赢思维', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-27 11:22:48'),
('可以说谎吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-27 11:23:54'),
('合作共享', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:24:43'),
('后悔有用吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:26:46'),
('呼吸', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:28:06'),
('压力山大', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:32:34'),
('团队', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:36:30'),
('在线演讲', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 11:52:55'),
('好心就有好报吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:06:36'),
('如何锻炼思维', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:07:48'),
('如果我中一个亿', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:08:44'),
('如果我只剩一天可活', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:10:12'),
('如果我失去了四肢', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-27 12:10:39'),
('存在的就是合理的吗？', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 1, '2018-04-28 12:39:43'),
('小打卡', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 4, '2018-04-28 12:40:31'),
('少就是多', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-28 12:40:39'),
('干一行爱一行 VS 爱一行干一行', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-28 12:41:17'),
('影响力', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-28 12:43:21'),
('微习惯', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-28 12:44:14'),
('微信', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-28 12:45:01'),
('怎样用十块钱过一天', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 3, '2018-04-28 12:46:24'),
('AI老师', 'ojVEl0Rekx0CXNXM4f4z35vGinG8', 0, '2018-04-28 19:35:56'),
('公共汽车', 'ojVEl0XuK00Wthcppktt5rVu-9DA', 2, '2018-04-29 12:54:40'),
('PDCA', 'ojVEl0Rekx0CXNXM4f4z35vGinG8', 0, '2018-04-30 02:24:51'),
('AI老师', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-09 04:07:09'),
('PDCA', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-09 04:09:22'),
('SWOT', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-09 04:11:35'),
('一切都是最好的安排', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-09 04:11:56'),
('AI老师', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-09 15:47:14'),
('PDCA', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-10 10:01:53'),
('一棵树', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-05-10 12:13:17'),
('上当', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-10 12:13:35'),
('上班路上', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-10 12:15:26'),
('上瘾', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-10 12:18:09'),
('下班以后', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-10 12:21:01'),
('不买最好，只买最贵', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-10 12:24:36'),
('不想当将军的士兵', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-10 12:25:31'),
('丑小鸭', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-10 12:26:36'),
('为什么大家都喜欢我', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-10 12:28:09'),
('事实胜于雄辩吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-10 12:30:38'),
('互联网', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-10 12:32:46'),
('一切都是最好的安排', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-10 15:53:15'),
('一棵树', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-10 16:44:58'),
('上当', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-10 16:59:41'),
('上班路上', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-12 01:14:38'),
('上瘾', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-12 10:11:49'),
('下班以后', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-12 10:41:57'),
('不买最好，只买最贵', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-12 11:12:00'),
('AI老师', 'oodE240FKxLoCIhtcnzbhcn4FskY', 3, '2018-05-12 11:14:50'),
('一切都是最好的安排', 'oodE240FKxLoCIhtcnzbhcn4FskY', 3, '2018-05-12 11:15:01'),
('一棵树', 'oodE240FKxLoCIhtcnzbhcn4FskY', 4, '2018-05-12 11:15:09'),
('上当', 'oodE240FKxLoCIhtcnzbhcn4FskY', 3, '2018-05-12 11:15:16'),
('上班路上', 'oodE240FKxLoCIhtcnzbhcn4FskY', 5, '2018-05-12 11:15:23'),
('上瘾', 'oodE240FKxLoCIhtcnzbhcn4FskY', 3, '2018-05-12 11:15:27'),
('下班以后', 'oodE240FKxLoCIhtcnzbhcn4FskY', 4, '2018-05-12 11:15:36'),
('不买最好，只买最贵', 'oodE240FKxLoCIhtcnzbhcn4FskY', 2, '2018-05-12 11:15:44'),
('不想当将军的士兵', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-12 11:32:35'),
('人与人是不同的吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 14:42:36'),
('人为什么会恐惧', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 14:43:09'),
('人工智能', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-12 15:09:12'),
('人性本善还是人性本恶？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 15:09:32'),
('人生没有白走的路', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 15:09:44'),
('人类有一天会灭亡吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 15:10:23'),
('人该不该我行我素？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-12 15:11:38'),
('人该知足还是不知足？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 15:11:59'),
('什么是男女平等？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 15:12:41'),
('以终为始', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 15:14:38'),
('以身作则', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 15:15:45'),
('价格是什么？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-12 15:17:14'),
('兄弟', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-12 15:18:26'),
('公共汽车', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 15:19:23'),
('冲突', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-12 15:20:35'),
('减法人生', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-13 07:02:04'),
('出门一脚踩到屎', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-13 07:06:15'),
('分享', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-13 07:08:20'),
('创业', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-13 07:10:20'),
('刻意练习', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-13 07:11:47'),
('加法人生', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-05-13 07:16:12'),
('丑小鸭', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-14 16:43:10'),
('为什么大家都喜欢我', 'oodE248GID68aJk8mLtO4Os5lerM', 0, '2018-05-15 05:36:44');

-- --------------------------------------------------------

--
-- 表的结构 `speech_name_info`
--

CREATE TABLE `speech_name_info` (
  `speech_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '演讲题目',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属用户',
  `level` float NOT NULL DEFAULT '0' COMMENT '评分等级',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='演讲题目表';

--
-- 转存表中的数据 `speech_name_info`
--

INSERT INTO `speech_name_info` (`speech_name`, `user_id`, `level`, `create_date`) VALUES
('AI老师', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:50:16'),
('一切都是最好的安排', 'oodE24_7jIys881HhvYPIjCBfQXc', 1, '2018-04-27 01:01:53'),
('一棵树', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 14:45:51'),
('上当', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:15:19'),
('上班路上', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:35:35'),
('上瘾', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:14:48'),
('下班以后', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:39:50'),
('不买最好，只买最贵', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 16:09:26'),
('不想当将军的士兵', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:02:15'),
('丑小鸭', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:45:58'),
('为什么大家都喜欢我', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:21:12'),
('事实胜于雄辩吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 01:16:36'),
('互联网', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 16:04:54'),
('人与人是不同的吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:05:40'),
('人为什么会恐惧', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 00:54:12'),
('人工智能', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 14:50:04'),
('人性本善还是人性本恶？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:04:09'),
('人生没有白走的路', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:38:18'),
('人类有一天会灭亡吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 00:55:30'),
('人该不该我行我素？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 01:18:58'),
('人该知足还是不知足？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:15:23'),
('什么是男女平等？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:03:25'),
('以终为始', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:52:57'),
('以身作则', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 14:47:39'),
('价格是什么？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 00:57:17'),
('兄弟', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-05-10 09:53:09'),
('公共汽车', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-29 02:53:26'),
('冲突', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 00:45:12'),
('减法人生', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-25 13:00:04'),
('出门一脚踩到屎', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-25 11:55:45'),
('分享', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:44:51'),
('创业', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:44:19'),
('刻意练习', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:44:12'),
('加法人生', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-25 12:59:56'),
('加班', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-26 04:28:02'),
('勇气', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 04:56:04'),
('包容', 'oodE24_7jIys881HhvYPIjCBfQXc', 1, '2018-04-27 01:04:58'),
('压力', 'oodE24_7jIys881HhvYPIjCBfQXc', 1, '2018-04-26 04:28:06'),
('压力山大', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 00:44:26'),
('及格', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:05:48'),
('双赢思维', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 1, '2018-04-26 14:53:25'),
('可以说谎吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 01:23:01'),
('合作共享', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:53:30'),
('后悔有用吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:00:37'),
('呼吸', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:50:38'),
('回家', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:59:35'),
('团队', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:53:40'),
('在线演讲', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:54:06'),
('坚持的理由', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-05-10 14:17:33'),
('外卖用餐体验', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-05-10 14:16:58'),
('夫妻', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-05-10 09:53:17'),
('奖金', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:41:27'),
('好同事，坏同事', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:40:28'),
('好心就有好报吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:16:07'),
('如何过一天', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:37:44'),
('如果我中一个亿', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 00:46:28'),
('如果我只剩一天可活', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 00:48:37'),
('如果我失去了四肢', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 00:47:56'),
('姐妹', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-05-10 09:52:56'),
('婚姻', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-05-10 09:53:22'),
('存在的就是合理的吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 1, '2018-04-27 01:17:54'),
('家常菜', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:59:30'),
('宿命', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-25 04:52:42'),
('小打卡', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 4, '2018-04-26 14:51:32'),
('少就是多', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:44:31'),
('工作效率', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:38:16'),
('工作的意义', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:42:45'),
('干一行爱一行 VS 爱一行干一行', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:20:11'),
('影响力', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 14:47:25'),
('微习惯', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:51:46'),
('微信', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:51:17'),
('怎样用十块钱过一天', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 04:58:34'),
('恐惧', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:43:29'),
('成绩', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:07:15'),
('我不在乎', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:36:19'),
('我不怕丢脸，我没有脸', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:25:24'),
('我不是人', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-25 11:31:53'),
('我也没啥，就是基因比较好', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-25 11:32:55'),
('我只是活得比较年轻', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:43:50'),
('我培养出来的男友/女友最赞', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:42:10'),
('我妈', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:59:14'),
('我希望的生活', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:17:34'),
('我是（男神/女神）', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-25 11:19:05'),
('我是小强', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:24:14'),
('我是谁？', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:55:38'),
('我有一个愿望', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:14:04'),
('我有一点牛逼', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-25 11:20:34'),
('我爸', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:59:09'),
('我的偶像', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:07:13'),
('我的同学', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:05:30'),
('我的工作', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 04:47:13'),
('我的正能量有点多', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:22:35'),
('我的爱好', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:10:38'),
('我的生活态度', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:18:33'),
('我的童年', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:02:57'),
('我的缺点', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:13:25'),
('我的老师', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:05:42'),
('我的领导', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:39:21'),
('打卡的意义', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-05-10 14:07:41'),
('打发无聊', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-25 11:16:45'),
('抖音', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:54:19'),
('提问', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:52:44'),
('支教', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:44:56'),
('教育的目的', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:13:02'),
('文凭和水平', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:22:07'),
('斜杠青年', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:46:07'),
('早起的鸟儿', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:35:25'),
('时代', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 04:54:40'),
('时代潮流', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 04:54:48'),
('时间是什么？', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:00:56'),
('有一个人对我帮助很大', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:59:08'),
('服务', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:44:41'),
('此刻我的心情', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:58:20'),
('此刻最想吐槽的一件事', 'oodE240FKxLoCIhtcnzbhcn4FskY', 0, '2018-05-12 11:12:53'),
('母亲', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-05-10 09:52:42'),
('每日清单', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:49:28'),
('洪荒之力', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:37:57'),
('游泳', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:50:33'),
('演讲的意义', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:45:05'),
('爱情是什么', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:53:02'),
('爱情是自私的吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:07:22'),
('爱美之心', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:01:13'),
('父亲', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-05-10 09:52:46'),
('独特观点', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-29 13:26:29'),
('环境污染', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-29 02:54:25'),
('现代人为何晚婚？', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:08:04'),
('瑜伽', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:50:21'),
('生活质量', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:39:59'),
('生病', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:39:06'),
('知行合一', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:44:20'),
('积极主动', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:52:47'),
('终身学习', 'oodE24_7jIys881HhvYPIjCBfQXc', 1, '2018-04-25 11:08:30'),
('自信与自负', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:12:34'),
('自我修炼', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:44:25'),
('良师益友', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:51:08'),
('谁（娶到/嫁给）我就赚到了', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:23:13'),
('责任心', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:51:40'),
('跑步', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:50:28'),
('跨部门沟通', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:46:38'),
('过去的就让它过去吧', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:00:20'),
('进化', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:45:30'),
('金钱是什么？', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:56:55'),
('金钱给我们带来什么', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:22:42'),
('阅读', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-05-10 14:07:48'),
('青春', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:08:57'),
('马云想请我吃饭，真没时间', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:23:46'),
('高效能人士', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:52:10'),
('高铁', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-29 02:51:15');

-- --------------------------------------------------------

--
-- 表的结构 `speech_subject`
--

CREATE TABLE `speech_subject` (
  `subject_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '演讲主题ID',
  `subject_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '演讲主题',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建人',
  `speech_names` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '演讲题目（回车分割）',
  `subject_status` int(5) NOT NULL DEFAULT '1' COMMENT '数据状态（1、提交；2、通过）',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user_absent`
--

CREATE TABLE `user_absent` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房间号',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `meeting_date` int(8) NOT NULL COMMENT '会议日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user_base_info`
--

CREATE TABLE `user_base_info` (
  `user_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '昵称',
  `recommend_user` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推荐人',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `first_speak_date` timestamp NULL DEFAULT NULL COMMENT '首次参会时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户基础信息表';

-- --------------------------------------------------------

--
-- 表的结构 `user_daily_task`
--

CREATE TABLE `user_daily_task` (
  `task_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务ID',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `task_type` int(5) NOT NULL COMMENT '任务类型',
  `task_status` int(5) NOT NULL COMMENT '任务状态',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户任务表';

-- --------------------------------------------------------

--
-- 表的结构 `user_introduction`
--

CREATE TABLE `user_introduction` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `introduce_audio_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '自我介绍音频ID',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户个人介绍';

-- --------------------------------------------------------

--
-- 表的结构 `user_like`
--

CREATE TABLE `user_like` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `like_user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '被关注的用户',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户关注信息表';

--
-- 转存表中的数据 `user_like`
--

INSERT INTO `user_like` (`user_id`, `like_user_id`, `create_date`) VALUES
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-10 06:24:53'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-10 06:26:45'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24_xgy8EdCX7e16zpUMd9Byw', '2018-05-10 13:05:19'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE240QoAfITCARm0JM7e-TBJx0', '2018-05-10 13:24:52'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE240QoAfITCARm0JM7e-TBJx0', '2018-05-10 13:53:23'),
('oodE245N8LBvC0sRYoz9HYcSqsEU', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-10 13:58:45'),
('oodE245N8LBvC0sRYoz9HYcSqsEU', 'oodE240QoAfITCARm0JM7e-TBJx0', '2018-05-10 13:59:27'),
('oodE245N8LBvC0sRYoz9HYcSqsEU', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-10 13:59:40'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE245N8LBvC0sRYoz9HYcSqsEU', '2018-05-10 14:01:45'),
('oodE245N8LBvC0sRYoz9HYcSqsEU', 'oodE24_xgy8EdCX7e16zpUMd9Byw', '2018-05-10 14:06:46'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-10 14:36:49'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE248iGhqQYEOCD7AhqQUNflTQ', '2018-05-10 14:36:53'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24_KvBCV4H9d1f43avoaezRE', '2018-05-11 12:31:35'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '2018-05-11 12:52:17'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24y7Yl7EEp3LQdSJEZTQI3NU', '2018-05-11 13:21:02'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24zH4t3nF1wBGw1UGagJBhTE', '2018-05-11 13:21:09'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE246BD0WE1GH1stbbEubbdGC4', '2018-05-11 13:21:15'),
('oodE24zH4t3nF1wBGw1UGagJBhTE', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-11 13:33:28'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE24_KvBCV4H9d1f43avoaezRE', '2018-05-11 13:35:20'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE24zH4t3nF1wBGw1UGagJBhTE', '2018-05-11 13:35:34'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE248iGhqQYEOCD7AhqQUNflTQ', '2018-05-11 14:13:25'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-11 14:13:32'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE246eooRLKYFY4w_PlsKX-xDE', '2018-05-11 14:13:37'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE2453Wmjn8UdgqAGxDQ-LisrY', '2018-05-12 13:00:59'),
('oodE2453Wmjn8UdgqAGxDQ-LisrY', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-12 13:01:03'),
('oodE24xwrQB0_3VlQnT98rx7SBsg', 'oodE24zH4t3nF1wBGw1UGagJBhTE', '2018-05-12 13:12:52'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE2453Wmjn8UdgqAGxDQ-LisrY', '2018-05-12 13:19:21'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE244WfcWaQMDW1lWpDveVIkr8', '2018-05-12 14:00:58'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE244WfcWaQMDW1lWpDveVIkr8', '2018-05-12 14:21:35'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE245tpxdouyL9TZhQSt7jEruo', '2018-05-13 12:26:27'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE241pZR_y2ClW8gw7bI1HcsBs', '2018-05-13 12:30:43'),
('oodE24zH4t3nF1wBGw1UGagJBhTE', 'oodE241pZR_y2ClW8gw7bI1HcsBs', '2018-05-13 12:34:45'),
('oodE24zH4t3nF1wBGw1UGagJBhTE', 'oodE241pZR_y2ClW8gw7bI1HcsBs', '2018-05-13 12:34:46'),
('oodE242sh8Tr5fDLEbOPnPXbSoy0', 'oodE240QoAfITCARm0JM7e-TBJx0', '2018-05-13 12:47:41'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE242sh8Tr5fDLEbOPnPXbSoy0', '2018-05-13 12:50:18'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24_KvBCV4H9d1f43avoaezRE', '2018-05-13 12:50:28'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE245tpxdouyL9TZhQSt7jEruo', '2018-05-13 12:50:58'),
('oodE24-qVk9InEWRSSSje9N6vtxc', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 12:53:24'),
('oodE24_KvBCV4H9d1f43avoaezRE', 'oodE24zH4t3nF1wBGw1UGagJBhTE', '2018-05-13 12:56:31'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24-qVk9InEWRSSSje9N6vtxc', '2018-05-13 13:18:09'),
('oodE24_7jIys881HhvYPIjCBfQXc', 'oodE24-qVk9InEWRSSSje9N6vtxc', '2018-05-13 13:40:01'),
('oodE24_KvBCV4H9d1f43avoaezRE', 'oodE24_7jIys881HhvYPIjCBfQXc', '2018-05-13 13:41:08'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE245BKxqphweRi3ESOc9KHxRM', '2018-05-14 03:53:02'),
('oodE245BKxqphweRi3ESOc9KHxRM', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-14 04:14:23'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE2425f3mVNVD061s7C-0Ov4sQ', '2018-05-14 07:29:18'),
('oodE24y7Yl7EEp3LQdSJEZTQI3NU', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-14 12:37:41'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24wu-BxDuyYQD4ByKB6gJZFQ', '2018-05-14 13:13:58'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24wu-BxDuyYQD4ByKB6gJZFQ', '2018-05-14 13:14:00'),
('oodE24wu-BxDuyYQD4ByKB6gJZFQ', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', '2018-05-14 13:14:02'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', 'oodE24899gglDHjzwdT9_eUEqpBU', '2018-05-14 13:31:10');

-- --------------------------------------------------------

--
-- 表的结构 `user_report_comment`
--

CREATE TABLE `user_report_comment` (
  `comment_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论ID',
  `report_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章ID',
  `user_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论人',
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='复盘评论表';

-- --------------------------------------------------------

--
-- 表的结构 `user_report_like`
--

CREATE TABLE `user_report_like` (
  `report_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章ID',
  `user_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '点赞用户ID',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='复盘点赞表';

-- --------------------------------------------------------

--
-- 表的结构 `user_role`
--

CREATE TABLE `user_role` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `role_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色ID',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户角色表';

-- --------------------------------------------------------

--
-- 表的结构 `user_score_detail`
--

CREATE TABLE `user_score_detail` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房间号',
  `user_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `meeting_date` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会议日期',
  `score_type` int(1) NOT NULL COMMENT '积分类型（1、参会；2、演讲获奖；3、点评获奖；4,、主持；5、复盘）',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='积分明细表';

-- --------------------------------------------------------

--
-- 表的结构 `user_score_rank`
--

CREATE TABLE `user_score_rank` (
  `user_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `score_type` int(2) NOT NULL COMMENT '积分类型',
  `score_total` int(11) NOT NULL COMMENT '积分总数',
  `rank` int(11) NOT NULL COMMENT '积分排名',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户积分排名';

-- --------------------------------------------------------

--
-- 表的结构 `user_special_task`
--

CREATE TABLE `user_special_task` (
  `task_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务ID',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user_study_duration`
--

CREATE TABLE `user_study_duration` (
  `user_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `study_date` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '学习时间',
  `study_type` int(5) NOT NULL DEFAULT '1' COMMENT '学习类型(1-演讲 2-复盘 3-聆听 4-鼓励)	',
  `study_amount` int(10) NOT NULL DEFAULT '1' COMMENT '学习次数',
  `study_duration` int(10) NOT NULL COMMENT '学习时长',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user_study_duration`
--

INSERT INTO `user_study_duration` (`user_id`, `study_date`, `study_type`, `study_amount`, `study_duration`, `create_time`) VALUES
('oodE24_7jIys881HhvYPIjCBfQXc', '20180510', 1, 1, 1602, '2018-05-10 04:59:00'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', '20180510', 1, 1, 1032, '2018-05-10 06:25:21'),
('oodE24_xgy8EdCX7e16zpUMd9Byw', '20180510', 1, 1, 123, '2018-05-10 13:04:19'),
('oodE241T4xYO-qusmLaoOHTNU50o', '20180510', 1, 1, 17, '2018-05-10 13:16:35'),
('oodE240QoAfITCARm0JM7e-TBJx0', '20180510', 1, 1, 433, '2018-05-10 13:16:45'),
('oodE248iGhqQYEOCD7AhqQUNflTQ', '20180510', 1, 1, 83, '2018-05-10 14:26:14'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', '20180511', 1, 1, 543, '2018-05-11 02:30:40'),
('oodE24_7jIys881HhvYPIjCBfQXc', '20180511', 1, 1, 1244, '2018-05-11 02:33:05'),
('oodE24_KvBCV4H9d1f43avoaezRE', '20180511', 1, 1, 352, '2018-05-11 12:32:00'),
('oodE246BD0WE1GH1stbbEubbdGC4', '20180511', 1, 1, 71, '2018-05-11 12:34:14'),
('oodE24y7Yl7EEp3LQdSJEZTQI3NU', '20180511', 1, 1, 1193, '2018-05-11 12:35:06'),
('oodE248eP-Y1r8VAWg_VjvpjnqYs', '20180511', 1, 1, 21, '2018-05-11 12:42:33'),
('oodE24zH4t3nF1wBGw1UGagJBhTE', '20180511', 1, 1, 122, '2018-05-11 12:44:31'),
('oodE244wADUiyy3aS2cdOAMAweoM', '20180511', 1, 1, 60, '2018-05-11 14:07:04'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', '20180512', 1, 1, 333, '2018-05-12 13:03:09'),
('oodE2453Wmjn8UdgqAGxDQ-LisrY', '20180512', 1, 1, 174, '2018-05-12 13:03:34'),
('oodE24_7jIys881HhvYPIjCBfQXc', '20180512', 1, 1, 423, '2018-05-12 13:16:32'),
('oodE244WfcWaQMDW1lWpDveVIkr8', '20180512', 1, 1, 406, '2018-05-12 13:29:35'),
('oodE245tpxdouyL9TZhQSt7jEruo', '20180513', 1, 1, 169, '2018-05-13 12:07:37'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', '20180513', 1, 1, 532, '2018-05-13 12:33:14'),
('oodE24zH4t3nF1wBGw1UGagJBhTE', '20180513', 1, 1, 455, '2018-05-13 12:33:39'),
('oodE240QoAfITCARm0JM7e-TBJx0', '20180513', 1, 1, 537, '2018-05-13 12:40:55'),
('oodE24_7jIys881HhvYPIjCBfQXc', '20180513', 1, 1, 811, '2018-05-13 12:41:19'),
('oodE24_KvBCV4H9d1f43avoaezRE', '20180513', 1, 1, 459, '2018-05-13 12:47:12'),
('oodE242sh8Tr5fDLEbOPnPXbSoy0', '20180513', 1, 1, 427, '2018-05-13 12:48:48'),
('oodE24-qVk9InEWRSSSje9N6vtxc', '20180513', 1, 1, 278, '2018-05-13 12:52:52'),
('oodE24y7Yl7EEp3LQdSJEZTQI3NU', '20180514', 1, 1, 994, '2018-05-14 12:37:49'),
('oodE2426KLvEqSsz-Q1qQpXFNAlA', '20180514', 1, 1, 904, '2018-05-14 12:42:09'),
('oodE24_7jIys881HhvYPIjCBfQXc', '20180514', 1, 1, 136, '2018-05-14 13:03:15'),
('oodE24wu-BxDuyYQD4ByKB6gJZFQ', '20180514', 1, 1, 408, '2018-05-14 13:16:27');

-- --------------------------------------------------------

--
-- 表的结构 `user_study_report`
--

CREATE TABLE `user_study_report` (
  `report_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '文章ID',
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房间号',
  `user_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `report_type` int(2) DEFAULT NULL COMMENT '1即兴2备稿3工作坊',
  `study_report` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '复盘内容',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会议复盘';

-- --------------------------------------------------------

--
-- 表的结构 `user_target`
--

CREATE TABLE `user_target` (
  `target_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '目标',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `target_status` int(2) NOT NULL COMMENT '目标状态（1执行中、2完成、3作废）',
  `target_content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '目标内容',
  `duration` int(11) NOT NULL COMMENT '计划学习时长',
  `end_date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '计划完成时间',
  `finish_date` timestamp NULL DEFAULT NULL COMMENT '目标完成时间',
  `is_supervised` tinyint(1) NOT NULL COMMENT '是否接受监督',
  `supervise_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '目标监督人',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户目标表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cSessionInfo`
--
ALTER TABLE `cSessionInfo`
  ADD PRIMARY KEY (`open_id`),
  ADD KEY `openid` (`open_id`) USING BTREE,
  ADD KEY `skey` (`skey`) USING BTREE;

--
-- Indexes for table `impromptu_audio`
--
ALTER TABLE `impromptu_audio`
  ADD PRIMARY KEY (`audio_id`),
  ADD KEY `relate_audio` (`relate_audio`),
  ADD KEY `create_date` (`create_date`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `relate_audio_2` (`relate_audio`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `impromptu_audio_like`
--
ALTER TABLE `impromptu_audio_like`
  ADD KEY `audio_id` (`audio_id`);

--
-- Indexes for table `impromptu_dialog`
--
ALTER TABLE `impromptu_dialog`
  ADD PRIMARY KEY (`dialog_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `impromptu_room`
--
ALTER TABLE `impromptu_room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`);

--
-- Indexes for table `impromptu_survey`
--
ALTER TABLE `impromptu_survey`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `impromptu_vote`
--
ALTER TABLE `impromptu_vote`
  ADD PRIMARY KEY (`room_id`,`user_id`);

--
-- Indexes for table `meeting_apply`
--
ALTER TABLE `meeting_apply`
  ADD PRIMARY KEY (`user_id`,`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `meeting_apply_pre`
--
ALTER TABLE `meeting_apply_pre`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `new_comment`
--
ALTER TABLE `new_comment`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `audio_id` (`audio_id`);

--
-- Indexes for table `room_impromptu`
--
ALTER TABLE `room_impromptu`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `speech_name_evaluate`
--
ALTER TABLE `speech_name_evaluate`
  ADD KEY `speech_name` (`speech_name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `speech_name_info`
--
ALTER TABLE `speech_name_info`
  ADD PRIMARY KEY (`speech_name`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `level` (`level`),
  ADD KEY `create_date` (`create_date`);

--
-- Indexes for table `speech_subject`
--
ALTER TABLE `speech_subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `subject_name` (`subject_name`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `create_date` (`create_date`);

--
-- Indexes for table `user_absent`
--
ALTER TABLE `user_absent`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_base_info`
--
ALTER TABLE `user_base_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_daily_task`
--
ALTER TABLE `user_daily_task`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `create_date` (`create_date`),
  ADD KEY `create_date_2` (`create_date`);

--
-- Indexes for table `user_introduction`
--
ALTER TABLE `user_introduction`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_like`
--
ALTER TABLE `user_like`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `like_user_id` (`like_user_id`);

--
-- Indexes for table `user_score_detail`
--
ALTER TABLE `user_score_detail`
  ADD PRIMARY KEY (`room_id`,`user_id`,`score_type`);

--
-- Indexes for table `user_special_task`
--
ALTER TABLE `user_special_task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `user_study_duration`
--
ALTER TABLE `user_study_duration`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_study_report`
--
ALTER TABLE `user_study_report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `user_id` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
