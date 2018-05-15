-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-05-09 08:49:37
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

-- --------------------------------------------------------

--
-- 表的结构 `impromptu_audio_like`
--

CREATE TABLE `impromptu_audio_like` (
  `audio_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '音频ID',
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '点赞用户ID',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `audio_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '被点评音频的标题',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('一切都是最好的安排', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-05-09 04:11:56');

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
('PDCA', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 16:06:11'),
('SWOT', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 4, '2018-04-26 16:13:11'),
('一切都是最好的安排', 'oodE24_7jIys881HhvYPIjCBfQXc', 1, '2018-04-27 01:01:53'),
('一棵树', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 14:45:51'),
('上当', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:15:19'),
('上班路上', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:35:35'),
('上瘾', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:14:48'),
('下班以后', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:39:50'),
('不买最好，只买最贵', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 4, '2018-04-26 16:09:26'),
('不想当将军的士兵', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:02:15'),
('丑小鸭', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 14:45:58'),
('为什么大家都喜欢我', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:21:12'),
('事实胜于雄辩吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 01:16:36'),
('互联网', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 16:04:54'),
('产品思维', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 16:04:09'),
('产品经理', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 16:04:01'),
('人与人是不同的吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:05:40'),
('人为什么会恐惧', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-27 00:54:12'),
('人工智能', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:50:04'),
('人性本善还是人性本恶？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:04:09'),
('人生没有白走的路', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 11:38:18'),
('人类有一天会灭亡吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-27 00:55:30'),
('人该不该我行我素？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 01:18:58'),
('人该知足还是不知足？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:15:23'),
('什么是男女平等？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:03:25'),
('以终为始', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:52:57'),
('以身作则', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 14:47:39'),
('价格是什么？', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-27 00:57:17'),
('公共汽车', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-29 02:53:26'),
('冥想', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:50:42'),
('冲突', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 00:45:12'),
('减法人生', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-25 13:00:04'),
('凡勃伦效应', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 5, '2018-04-26 16:10:52'),
('出门一脚踩到屎', 'oodE24_7jIys881HhvYPIjCBfQXc', 5, '2018-04-25 11:55:45'),
('分享', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:44:51'),
('创业', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:44:19'),
('刻意练习', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:44:12'),
('加法人生', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-25 12:59:56'),
('加班', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-26 04:28:02'),
('勇气', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 04:56:04'),
('包容', 'oodE24_7jIys881HhvYPIjCBfQXc', 1, '2018-04-27 01:04:58'),
('华为', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 3, '2018-04-26 14:53:52'),
('卓越成效的管理者', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:52:05'),
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
('奖金', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:41:27'),
('好同事，坏同事', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:40:28'),
('好心就有好报吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 01:16:07'),
('如何过一天', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 10:37:44'),
('如何锻炼思维', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-26 14:45:43'),
('如果我中一个亿', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 00:46:28'),
('如果我只剩一天可活', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 00:48:37'),
('如果我失去了四肢', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-27 00:47:56'),
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
('思维导图', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:49:49'),
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
('打发无聊', 'oodE24_7jIys881HhvYPIjCBfQXc', 4, '2018-04-25 11:16:45'),
('抖音', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:54:19'),
('推论阶梯', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 16:08:37'),
('提问', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:52:44'),
('支教', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:44:56'),
('教练与导师的区别', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 2, '2018-04-25 13:41:17'),
('教育的目的', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:13:02'),
('文凭和水平', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:22:07'),
('斜杠青年', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:46:07'),
('早起的鸟儿', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 10:35:25'),
('时代', 'oodE24_7jIys881HhvYPIjCBfQXc', 2, '2018-04-25 04:54:40'),
('时代潮流', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 04:54:48'),
('时间是什么？', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:00:56'),
('晕轮效应', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 16:11:01'),
('有一个人对我帮助很大', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:59:08'),
('服务', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:44:41'),
('欣赏式探寻', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:46:25'),
('此刻我的心情', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:58:20'),
('每日清单', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:49:28'),
('洪荒之力', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:37:57'),
('游泳', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:50:33'),
('演讲的意义', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:45:05'),
('爱情是什么', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:53:02'),
('爱情是自私的吗？', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:07:22'),
('爱美之心', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:01:13'),
('独特观点', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-29 13:26:29'),
('环境污染', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-29 02:54:25'),
('现代人为何晚婚？', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:08:04'),
('瑜伽', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:50:21'),
('生活质量', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:39:59'),
('生病', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:39:06'),
('用户画像', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 16:04:50'),
('目标管理', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:49:07'),
('知行合一', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:44:20'),
('积极主动', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:52:47'),
('终身学习', 'oodE24_7jIys881HhvYPIjCBfQXc', 1, '2018-04-25 11:08:30'),
('自信与自负', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:12:34'),
('自我修炼', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:44:25'),
('良师益友', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:51:08'),
('营销', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 16:04:20'),
('试错力', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 16:03:49'),
('谁（娶到/嫁给）我就赚到了', 'oodE24_7jIys881HhvYPIjCBfQXc', 3, '2018-04-25 11:23:13'),
('责任心', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:51:40'),
('超越', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-27 09:38:16'),
('跑步', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:50:28'),
('跨部门沟通', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-26 14:46:38'),
('边缘化', 'oodE2426KLvEqSsz-Q1qQpXFNAlA', 0, '2018-04-29 13:27:53'),
('过去的就让它过去吧', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:00:20'),
('进化', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:45:30'),
('金钱是什么？', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 00:56:55'),
('金钱给我们带来什么', 'oodE24_7jIys881HhvYPIjCBfQXc', 0, '2018-04-27 01:22:42'),
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
  `study_duration` int(4) NOT NULL COMMENT '学习时长',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
