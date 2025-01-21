/*
 Navicat Premium Dump SQL

 Source Server         : Database
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : perpus

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 20/01/2025 09:29:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_logs
-- ----------------------------
DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE `activity_logs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1072 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity_logs
-- ----------------------------
INSERT INTO `activity_logs` VALUES (1, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-07 14:42:54', '2025-01-07 14:42:54');
INSERT INTO `activity_logs` VALUES (2, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-07 14:43:17', '2025-01-07 14:43:17');
INSERT INTO `activity_logs` VALUES (3, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-07 14:43:37', '2025-01-07 14:43:37');
INSERT INTO `activity_logs` VALUES (4, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-07 15:02:34', '2025-01-07 15:02:34');
INSERT INTO `activity_logs` VALUES (5, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-07 15:02:48', '2025-01-07 15:02:48');
INSERT INTO `activity_logs` VALUES (6, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-07 15:14:44', '2025-01-07 15:14:44');
INSERT INTO `activity_logs` VALUES (7, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-07 15:15:01', '2025-01-07 15:15:01');
INSERT INTO `activity_logs` VALUES (8, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:23:27', '2025-01-07 15:23:27');
INSERT INTO `activity_logs` VALUES (9, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:24:17', '2025-01-07 15:24:17');
INSERT INTO `activity_logs` VALUES (10, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:24:43', '2025-01-07 15:24:43');
INSERT INTO `activity_logs` VALUES (11, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:25:21', '2025-01-07 15:25:21');
INSERT INTO `activity_logs` VALUES (12, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:26:03', '2025-01-07 15:26:03');
INSERT INTO `activity_logs` VALUES (13, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:26:38', '2025-01-07 15:26:38');
INSERT INTO `activity_logs` VALUES (14, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:27:36', '2025-01-07 15:27:36');
INSERT INTO `activity_logs` VALUES (15, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:28:01', '2025-01-07 15:28:01');
INSERT INTO `activity_logs` VALUES (16, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:32:42', '2025-01-07 15:32:42');
INSERT INTO `activity_logs` VALUES (17, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:33:54', '2025-01-07 15:33:54');
INSERT INTO `activity_logs` VALUES (18, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:34:57', '2025-01-07 15:34:57');
INSERT INTO `activity_logs` VALUES (19, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-07 15:35:03', '2025-01-07 15:35:03');
INSERT INTO `activity_logs` VALUES (20, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:35:03', '2025-01-07 15:35:03');
INSERT INTO `activity_logs` VALUES (21, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-07 15:35:04', '2025-01-07 15:35:04');
INSERT INTO `activity_logs` VALUES (22, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:35:04', '2025-01-07 15:35:04');
INSERT INTO `activity_logs` VALUES (23, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:35:06', '2025-01-07 15:35:06');
INSERT INTO `activity_logs` VALUES (24, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:36:26', '2025-01-07 15:36:26');
INSERT INTO `activity_logs` VALUES (25, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-07 15:37:08', '2025-01-07 15:37:08');
INSERT INTO `activity_logs` VALUES (26, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:37:09', '2025-01-07 15:37:09');
INSERT INTO `activity_logs` VALUES (27, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-07 15:37:09', '2025-01-07 15:37:09');
INSERT INTO `activity_logs` VALUES (28, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:37:09', '2025-01-07 15:37:09');
INSERT INTO `activity_logs` VALUES (29, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:37:11', '2025-01-07 15:37:11');
INSERT INTO `activity_logs` VALUES (30, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:38:30', '2025-01-07 15:38:30');
INSERT INTO `activity_logs` VALUES (31, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:38:56', '2025-01-07 15:38:56');
INSERT INTO `activity_logs` VALUES (32, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-07 15:39:12', '2025-01-07 15:39:12');
INSERT INTO `activity_logs` VALUES (33, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:39:12', '2025-01-07 15:39:12');
INSERT INTO `activity_logs` VALUES (34, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:39:16', '2025-01-07 15:39:16');
INSERT INTO `activity_logs` VALUES (35, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:41:52', '2025-01-07 15:41:52');
INSERT INTO `activity_logs` VALUES (36, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-07 15:41:56', '2025-01-07 15:41:56');
INSERT INTO `activity_logs` VALUES (37, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:41:57', '2025-01-07 15:41:57');
INSERT INTO `activity_logs` VALUES (38, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:41:57', '2025-01-07 15:41:57');
INSERT INTO `activity_logs` VALUES (39, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:43:08', '2025-01-07 15:43:08');
INSERT INTO `activity_logs` VALUES (40, 'create', '1', 'User Menghapus Pengumuman Sekolah.', '2025-01-07 15:43:15', '2025-01-07 15:43:15');
INSERT INTO `activity_logs` VALUES (41, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:43:15', '2025-01-07 15:43:15');
INSERT INTO `activity_logs` VALUES (42, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:52:04', '2025-01-07 15:52:04');
INSERT INTO `activity_logs` VALUES (43, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:52:43', '2025-01-07 15:52:43');
INSERT INTO `activity_logs` VALUES (44, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:52:51', '2025-01-07 15:52:51');
INSERT INTO `activity_logs` VALUES (45, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:53:01', '2025-01-07 15:53:01');
INSERT INTO `activity_logs` VALUES (46, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:54:02', '2025-01-07 15:54:02');
INSERT INTO `activity_logs` VALUES (47, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:54:12', '2025-01-07 15:54:12');
INSERT INTO `activity_logs` VALUES (48, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:55:14', '2025-01-07 15:55:14');
INSERT INTO `activity_logs` VALUES (49, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:55:20', '2025-01-07 15:55:20');
INSERT INTO `activity_logs` VALUES (50, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:56:47', '2025-01-07 15:56:47');
INSERT INTO `activity_logs` VALUES (51, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:56:57', '2025-01-07 15:56:57');
INSERT INTO `activity_logs` VALUES (52, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-07 15:57:02', '2025-01-07 15:57:02');
INSERT INTO `activity_logs` VALUES (53, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:57:02', '2025-01-07 15:57:02');
INSERT INTO `activity_logs` VALUES (54, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:57:02', '2025-01-07 15:57:02');
INSERT INTO `activity_logs` VALUES (55, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 15:57:52', '2025-01-07 15:57:52');
INSERT INTO `activity_logs` VALUES (56, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:01:26', '2025-01-07 16:01:26');
INSERT INTO `activity_logs` VALUES (57, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:03:03', '2025-01-07 16:03:03');
INSERT INTO `activity_logs` VALUES (58, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:03:50', '2025-01-07 16:03:50');
INSERT INTO `activity_logs` VALUES (59, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:04:02', '2025-01-07 16:04:02');
INSERT INTO `activity_logs` VALUES (60, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:04:04', '2025-01-07 16:04:04');
INSERT INTO `activity_logs` VALUES (61, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:04:05', '2025-01-07 16:04:05');
INSERT INTO `activity_logs` VALUES (62, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:05:27', '2025-01-07 16:05:27');
INSERT INTO `activity_logs` VALUES (63, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:05:40', '2025-01-07 16:05:40');
INSERT INTO `activity_logs` VALUES (64, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:06:08', '2025-01-07 16:06:08');
INSERT INTO `activity_logs` VALUES (65, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:06:31', '2025-01-07 16:06:31');
INSERT INTO `activity_logs` VALUES (66, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:06:39', '2025-01-07 16:06:39');
INSERT INTO `activity_logs` VALUES (67, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:06:58', '2025-01-07 16:06:58');
INSERT INTO `activity_logs` VALUES (68, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:06:59', '2025-01-07 16:06:59');
INSERT INTO `activity_logs` VALUES (69, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:07:05', '2025-01-07 16:07:05');
INSERT INTO `activity_logs` VALUES (70, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:07:05', '2025-01-07 16:07:05');
INSERT INTO `activity_logs` VALUES (71, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:07:06', '2025-01-07 16:07:06');
INSERT INTO `activity_logs` VALUES (72, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:07:23', '2025-01-07 16:07:23');
INSERT INTO `activity_logs` VALUES (73, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:07:36', '2025-01-07 16:07:36');
INSERT INTO `activity_logs` VALUES (74, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:07:55', '2025-01-07 16:07:55');
INSERT INTO `activity_logs` VALUES (75, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:08:12', '2025-01-07 16:08:12');
INSERT INTO `activity_logs` VALUES (76, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:08:22', '2025-01-07 16:08:22');
INSERT INTO `activity_logs` VALUES (77, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:08:26', '2025-01-07 16:08:26');
INSERT INTO `activity_logs` VALUES (78, 'update', '1', 'User mengatur pengumuman umum.', '2025-01-07 16:09:27', '2025-01-07 16:09:27');
INSERT INTO `activity_logs` VALUES (79, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:09:38', '2025-01-07 16:09:38');
INSERT INTO `activity_logs` VALUES (80, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:10:16', '2025-01-07 16:10:16');
INSERT INTO `activity_logs` VALUES (81, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:10:25', '2025-01-07 16:10:25');
INSERT INTO `activity_logs` VALUES (82, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:10:29', '2025-01-07 16:10:29');
INSERT INTO `activity_logs` VALUES (83, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:10:54', '2025-01-07 16:10:54');
INSERT INTO `activity_logs` VALUES (84, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:11:05', '2025-01-07 16:11:05');
INSERT INTO `activity_logs` VALUES (85, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:11:10', '2025-01-07 16:11:10');
INSERT INTO `activity_logs` VALUES (86, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:11:42', '2025-01-07 16:11:42');
INSERT INTO `activity_logs` VALUES (87, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:12:18', '2025-01-07 16:12:18');
INSERT INTO `activity_logs` VALUES (88, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:12:28', '2025-01-07 16:12:28');
INSERT INTO `activity_logs` VALUES (89, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:12:32', '2025-01-07 16:12:32');
INSERT INTO `activity_logs` VALUES (90, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:13:11', '2025-01-07 16:13:11');
INSERT INTO `activity_logs` VALUES (91, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:13:20', '2025-01-07 16:13:20');
INSERT INTO `activity_logs` VALUES (92, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:13:27', '2025-01-07 16:13:27');
INSERT INTO `activity_logs` VALUES (93, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:13:30', '2025-01-07 16:13:30');
INSERT INTO `activity_logs` VALUES (94, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:13:37', '2025-01-07 16:13:37');
INSERT INTO `activity_logs` VALUES (95, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:14:34', '2025-01-07 16:14:34');
INSERT INTO `activity_logs` VALUES (96, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:15:37', '2025-01-07 16:15:37');
INSERT INTO `activity_logs` VALUES (97, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:15:46', '2025-01-07 16:15:46');
INSERT INTO `activity_logs` VALUES (98, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:16:40', '2025-01-07 16:16:40');
INSERT INTO `activity_logs` VALUES (99, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:17:37', '2025-01-07 16:17:37');
INSERT INTO `activity_logs` VALUES (100, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:17:53', '2025-01-07 16:17:53');
INSERT INTO `activity_logs` VALUES (101, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:18:03', '2025-01-07 16:18:03');
INSERT INTO `activity_logs` VALUES (102, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:18:06', '2025-01-07 16:18:06');
INSERT INTO `activity_logs` VALUES (103, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:18:54', '2025-01-07 16:18:54');
INSERT INTO `activity_logs` VALUES (104, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:19:22', '2025-01-07 16:19:22');
INSERT INTO `activity_logs` VALUES (105, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:19:38', '2025-01-07 16:19:38');
INSERT INTO `activity_logs` VALUES (106, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:20:07', '2025-01-07 16:20:07');
INSERT INTO `activity_logs` VALUES (107, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:20:17', '2025-01-07 16:20:17');
INSERT INTO `activity_logs` VALUES (108, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:21:11', '2025-01-07 16:21:11');
INSERT INTO `activity_logs` VALUES (109, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:21:44', '2025-01-07 16:21:44');
INSERT INTO `activity_logs` VALUES (110, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:21:49', '2025-01-07 16:21:49');
INSERT INTO `activity_logs` VALUES (111, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:22:11', '2025-01-07 16:22:11');
INSERT INTO `activity_logs` VALUES (112, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:22:18', '2025-01-07 16:22:18');
INSERT INTO `activity_logs` VALUES (113, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:22:26', '2025-01-07 16:22:26');
INSERT INTO `activity_logs` VALUES (114, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:23:00', '2025-01-07 16:23:00');
INSERT INTO `activity_logs` VALUES (115, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:23:06', '2025-01-07 16:23:06');
INSERT INTO `activity_logs` VALUES (116, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:23:10', '2025-01-07 16:23:10');
INSERT INTO `activity_logs` VALUES (117, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:23:45', '2025-01-07 16:23:45');
INSERT INTO `activity_logs` VALUES (118, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:23:52', '2025-01-07 16:23:52');
INSERT INTO `activity_logs` VALUES (119, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:25:18', '2025-01-07 16:25:18');
INSERT INTO `activity_logs` VALUES (120, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:25:22', '2025-01-07 16:25:22');
INSERT INTO `activity_logs` VALUES (121, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:26:25', '2025-01-07 16:26:25');
INSERT INTO `activity_logs` VALUES (122, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:26:32', '2025-01-07 16:26:32');
INSERT INTO `activity_logs` VALUES (123, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:26:34', '2025-01-07 16:26:34');
INSERT INTO `activity_logs` VALUES (124, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:26:35', '2025-01-07 16:26:35');
INSERT INTO `activity_logs` VALUES (125, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:27:19', '2025-01-07 16:27:19');
INSERT INTO `activity_logs` VALUES (126, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:27:24', '2025-01-07 16:27:24');
INSERT INTO `activity_logs` VALUES (127, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:27:25', '2025-01-07 16:27:25');
INSERT INTO `activity_logs` VALUES (128, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:27:26', '2025-01-07 16:27:26');
INSERT INTO `activity_logs` VALUES (129, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:27:26', '2025-01-07 16:27:26');
INSERT INTO `activity_logs` VALUES (130, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:27:27', '2025-01-07 16:27:27');
INSERT INTO `activity_logs` VALUES (131, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:27:27', '2025-01-07 16:27:27');
INSERT INTO `activity_logs` VALUES (132, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:27:28', '2025-01-07 16:27:28');
INSERT INTO `activity_logs` VALUES (133, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:28:25', '2025-01-07 16:28:25');
INSERT INTO `activity_logs` VALUES (134, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:28:31', '2025-01-07 16:28:31');
INSERT INTO `activity_logs` VALUES (135, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:28:35', '2025-01-07 16:28:35');
INSERT INTO `activity_logs` VALUES (136, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:30:56', '2025-01-07 16:30:56');
INSERT INTO `activity_logs` VALUES (137, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:31:01', '2025-01-07 16:31:01');
INSERT INTO `activity_logs` VALUES (138, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:31:01', '2025-01-07 16:31:01');
INSERT INTO `activity_logs` VALUES (139, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-07 16:31:06', '2025-01-07 16:31:06');
INSERT INTO `activity_logs` VALUES (140, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:31:06', '2025-01-07 16:31:06');
INSERT INTO `activity_logs` VALUES (141, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:37:05', '2025-01-07 16:37:05');
INSERT INTO `activity_logs` VALUES (142, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:37:38', '2025-01-07 16:37:38');
INSERT INTO `activity_logs` VALUES (143, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:38:24', '2025-01-07 16:38:24');
INSERT INTO `activity_logs` VALUES (144, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:38:31', '2025-01-07 16:38:31');
INSERT INTO `activity_logs` VALUES (145, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:38:58', '2025-01-07 16:38:58');
INSERT INTO `activity_logs` VALUES (146, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:39:08', '2025-01-07 16:39:08');
INSERT INTO `activity_logs` VALUES (147, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:40:58', '2025-01-07 16:40:58');
INSERT INTO `activity_logs` VALUES (148, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:41:17', '2025-01-07 16:41:17');
INSERT INTO `activity_logs` VALUES (149, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:41:41', '2025-01-07 16:41:41');
INSERT INTO `activity_logs` VALUES (150, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:41:50', '2025-01-07 16:41:50');
INSERT INTO `activity_logs` VALUES (151, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:43:34', '2025-01-07 16:43:34');
INSERT INTO `activity_logs` VALUES (152, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:44:07', '2025-01-07 16:44:07');
INSERT INTO `activity_logs` VALUES (153, 'create', '1', 'User Membuat Pengumuman Terpilih.', '2025-01-07 16:44:12', '2025-01-07 16:44:12');
INSERT INTO `activity_logs` VALUES (154, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:44:12', '2025-01-07 16:44:12');
INSERT INTO `activity_logs` VALUES (155, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:44:13', '2025-01-07 16:44:13');
INSERT INTO `activity_logs` VALUES (156, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:44:53', '2025-01-07 16:44:53');
INSERT INTO `activity_logs` VALUES (157, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-07 16:45:01', '2025-01-07 16:45:01');
INSERT INTO `activity_logs` VALUES (158, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:45:01', '2025-01-07 16:45:01');
INSERT INTO `activity_logs` VALUES (159, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:45:56', '2025-01-07 16:45:56');
INSERT INTO `activity_logs` VALUES (160, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-07 16:46:00', '2025-01-07 16:46:00');
INSERT INTO `activity_logs` VALUES (161, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:46:01', '2025-01-07 16:46:01');
INSERT INTO `activity_logs` VALUES (162, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:46:20', '2025-01-07 16:46:20');
INSERT INTO `activity_logs` VALUES (163, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-07 16:46:25', '2025-01-07 16:46:25');
INSERT INTO `activity_logs` VALUES (164, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:46:25', '2025-01-07 16:46:25');
INSERT INTO `activity_logs` VALUES (165, 'create', '1', 'User Menghapus Pengumuman Terpilih.', '2025-01-07 16:46:28', '2025-01-07 16:46:28');
INSERT INTO `activity_logs` VALUES (166, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-07 16:46:28', '2025-01-07 16:46:28');
INSERT INTO `activity_logs` VALUES (167, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:46:32', '2025-01-07 16:46:32');
INSERT INTO `activity_logs` VALUES (168, 'create', '1', 'User Menghapus Pengumuman Sekolah.', '2025-01-07 16:46:35', '2025-01-07 16:46:35');
INSERT INTO `activity_logs` VALUES (169, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-07 16:46:36', '2025-01-07 16:46:36');
INSERT INTO `activity_logs` VALUES (170, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-08 09:57:22', '2025-01-08 09:57:22');
INSERT INTO `activity_logs` VALUES (171, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-08 09:57:30', '2025-01-08 09:57:30');
INSERT INTO `activity_logs` VALUES (172, 'create', '1', 'User Masuk Ke Setting.', '2025-01-08 09:57:33', '2025-01-08 09:57:33');
INSERT INTO `activity_logs` VALUES (173, 'create', '1', 'User Masuk Ke Setting.', '2025-01-08 09:57:40', '2025-01-08 09:57:40');
INSERT INTO `activity_logs` VALUES (174, 'create', '1', 'User Masuk Ke Setting.', '2025-01-08 09:58:00', '2025-01-08 09:58:00');
INSERT INTO `activity_logs` VALUES (175, 'create', '1', 'User Masuk Ke Setting.', '2025-01-08 09:58:07', '2025-01-08 09:58:07');
INSERT INTO `activity_logs` VALUES (176, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 09:58:48', '2025-01-08 09:58:48');
INSERT INTO `activity_logs` VALUES (177, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:01:33', '2025-01-08 10:01:33');
INSERT INTO `activity_logs` VALUES (178, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:07:52', '2025-01-08 10:07:52');
INSERT INTO `activity_logs` VALUES (179, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-08 10:08:20', '2025-01-08 10:08:20');
INSERT INTO `activity_logs` VALUES (180, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:08:23', '2025-01-08 10:08:23');
INSERT INTO `activity_logs` VALUES (181, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-08 10:08:23', '2025-01-08 10:08:23');
INSERT INTO `activity_logs` VALUES (182, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:08:23', '2025-01-08 10:08:23');
INSERT INTO `activity_logs` VALUES (183, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:08:24', '2025-01-08 10:08:24');
INSERT INTO `activity_logs` VALUES (184, 'create', '1', 'User Menghapus Pengumuman Sekolah.', '2025-01-08 10:08:28', '2025-01-08 10:08:28');
INSERT INTO `activity_logs` VALUES (185, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:08:28', '2025-01-08 10:08:28');
INSERT INTO `activity_logs` VALUES (186, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:11:56', '2025-01-08 10:11:56');
INSERT INTO `activity_logs` VALUES (187, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:12:33', '2025-01-08 10:12:33');
INSERT INTO `activity_logs` VALUES (188, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:14:10', '2025-01-08 10:14:10');
INSERT INTO `activity_logs` VALUES (189, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:14:58', '2025-01-08 10:14:58');
INSERT INTO `activity_logs` VALUES (190, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:16:13', '2025-01-08 10:16:13');
INSERT INTO `activity_logs` VALUES (191, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:16:18', '2025-01-08 10:16:18');
INSERT INTO `activity_logs` VALUES (192, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:17:06', '2025-01-08 10:17:06');
INSERT INTO `activity_logs` VALUES (193, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:21:13', '2025-01-08 10:21:13');
INSERT INTO `activity_logs` VALUES (194, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:21:34', '2025-01-08 10:21:34');
INSERT INTO `activity_logs` VALUES (195, 'update', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 10:21:56', '2025-01-08 10:21:56');
INSERT INTO `activity_logs` VALUES (196, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:21:57', '2025-01-08 10:21:57');
INSERT INTO `activity_logs` VALUES (197, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:24:15', '2025-01-08 10:24:15');
INSERT INTO `activity_logs` VALUES (198, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:25:34', '2025-01-08 10:25:34');
INSERT INTO `activity_logs` VALUES (199, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:26:48', '2025-01-08 10:26:48');
INSERT INTO `activity_logs` VALUES (200, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:28:12', '2025-01-08 10:28:12');
INSERT INTO `activity_logs` VALUES (201, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:35:22', '2025-01-08 10:35:22');
INSERT INTO `activity_logs` VALUES (202, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 10:35:48', '2025-01-08 10:35:48');
INSERT INTO `activity_logs` VALUES (203, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:36:00', '2025-01-08 10:36:00');
INSERT INTO `activity_logs` VALUES (204, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:38:09', '2025-01-08 10:38:09');
INSERT INTO `activity_logs` VALUES (205, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:38:25', '2025-01-08 10:38:25');
INSERT INTO `activity_logs` VALUES (206, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:38:34', '2025-01-08 10:38:34');
INSERT INTO `activity_logs` VALUES (207, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:39:32', '2025-01-08 10:39:32');
INSERT INTO `activity_logs` VALUES (208, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:40:36', '2025-01-08 10:40:36');
INSERT INTO `activity_logs` VALUES (209, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:40:57', '2025-01-08 10:40:57');
INSERT INTO `activity_logs` VALUES (210, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:41:06', '2025-01-08 10:41:06');
INSERT INTO `activity_logs` VALUES (211, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:41:12', '2025-01-08 10:41:12');
INSERT INTO `activity_logs` VALUES (212, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:41:55', '2025-01-08 10:41:55');
INSERT INTO `activity_logs` VALUES (213, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:43:54', '2025-01-08 10:43:54');
INSERT INTO `activity_logs` VALUES (214, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:44:20', '2025-01-08 10:44:20');
INSERT INTO `activity_logs` VALUES (215, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:44:40', '2025-01-08 10:44:40');
INSERT INTO `activity_logs` VALUES (216, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:56:22', '2025-01-08 10:56:22');
INSERT INTO `activity_logs` VALUES (217, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:57:47', '2025-01-08 10:57:47');
INSERT INTO `activity_logs` VALUES (218, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 10:58:12', '2025-01-08 10:58:12');
INSERT INTO `activity_logs` VALUES (219, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:58:12', '2025-01-08 10:58:12');
INSERT INTO `activity_logs` VALUES (220, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 10:58:38', '2025-01-08 10:58:38');
INSERT INTO `activity_logs` VALUES (221, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 10:59:03', '2025-01-08 10:59:03');
INSERT INTO `activity_logs` VALUES (222, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 10:59:04', '2025-01-08 10:59:04');
INSERT INTO `activity_logs` VALUES (223, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:00:45', '2025-01-08 11:00:45');
INSERT INTO `activity_logs` VALUES (224, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:00:54', '2025-01-08 11:00:54');
INSERT INTO `activity_logs` VALUES (225, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 11:01:19', '2025-01-08 11:01:19');
INSERT INTO `activity_logs` VALUES (226, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:01:19', '2025-01-08 11:01:19');
INSERT INTO `activity_logs` VALUES (227, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:01:59', '2025-01-08 11:01:59');
INSERT INTO `activity_logs` VALUES (228, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 11:02:07', '2025-01-08 11:02:07');
INSERT INTO `activity_logs` VALUES (229, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:02:08', '2025-01-08 11:02:08');
INSERT INTO `activity_logs` VALUES (230, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-08 11:02:18', '2025-01-08 11:02:18');
INSERT INTO `activity_logs` VALUES (231, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:02:19', '2025-01-08 11:02:19');
INSERT INTO `activity_logs` VALUES (232, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:02:19', '2025-01-08 11:02:19');
INSERT INTO `activity_logs` VALUES (233, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:02:46', '2025-01-08 11:02:46');
INSERT INTO `activity_logs` VALUES (234, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-08 11:02:54', '2025-01-08 11:02:54');
INSERT INTO `activity_logs` VALUES (235, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:02:54', '2025-01-08 11:02:54');
INSERT INTO `activity_logs` VALUES (236, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:02:55', '2025-01-08 11:02:55');
INSERT INTO `activity_logs` VALUES (237, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:03:21', '2025-01-08 11:03:21');
INSERT INTO `activity_logs` VALUES (238, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-08 11:03:30', '2025-01-08 11:03:30');
INSERT INTO `activity_logs` VALUES (239, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:03:30', '2025-01-08 11:03:30');
INSERT INTO `activity_logs` VALUES (240, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:03:31', '2025-01-08 11:03:31');
INSERT INTO `activity_logs` VALUES (241, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:14:50', '2025-01-08 11:14:50');
INSERT INTO `activity_logs` VALUES (242, 'create', '1', 'User Menghapus Pengumuman Sekolah.', '2025-01-08 11:14:53', '2025-01-08 11:14:53');
INSERT INTO `activity_logs` VALUES (243, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:14:53', '2025-01-08 11:14:53');
INSERT INTO `activity_logs` VALUES (244, 'create', '1', 'User Menghapus Pengumuman Sekolah.', '2025-01-08 11:14:56', '2025-01-08 11:14:56');
INSERT INTO `activity_logs` VALUES (245, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:14:56', '2025-01-08 11:14:56');
INSERT INTO `activity_logs` VALUES (246, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-08 11:15:09', '2025-01-08 11:15:09');
INSERT INTO `activity_logs` VALUES (247, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:15:09', '2025-01-08 11:15:09');
INSERT INTO `activity_logs` VALUES (248, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:15:09', '2025-01-08 11:15:09');
INSERT INTO `activity_logs` VALUES (249, 'update', '1', 'User Mengubah Pengumuman Umum.', '2025-01-08 11:15:34', '2025-01-08 11:15:34');
INSERT INTO `activity_logs` VALUES (250, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:15:34', '2025-01-08 11:15:34');
INSERT INTO `activity_logs` VALUES (251, 'update', '1', 'User Mengubah Pengumuman Umum.', '2025-01-08 11:15:53', '2025-01-08 11:15:53');
INSERT INTO `activity_logs` VALUES (252, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:15:53', '2025-01-08 11:15:53');
INSERT INTO `activity_logs` VALUES (253, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:16:15', '2025-01-08 11:16:15');
INSERT INTO `activity_logs` VALUES (254, 'update', '1', 'User Mengubah Pengumuman Umum.', '2025-01-08 11:16:25', '2025-01-08 11:16:25');
INSERT INTO `activity_logs` VALUES (255, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:16:25', '2025-01-08 11:16:25');
INSERT INTO `activity_logs` VALUES (256, 'create', '1', 'User Menghapus Pengumuman Sekolah.', '2025-01-08 11:16:34', '2025-01-08 11:16:34');
INSERT INTO `activity_logs` VALUES (257, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:16:34', '2025-01-08 11:16:34');
INSERT INTO `activity_logs` VALUES (258, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-08 11:16:41', '2025-01-08 11:16:41');
INSERT INTO `activity_logs` VALUES (259, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:16:42', '2025-01-08 11:16:42');
INSERT INTO `activity_logs` VALUES (260, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:16:42', '2025-01-08 11:16:42');
INSERT INTO `activity_logs` VALUES (261, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:18:44', '2025-01-08 11:18:44');
INSERT INTO `activity_logs` VALUES (262, 'update', '1', 'User Mengubah Pengumuman Umum.', '2025-01-08 11:18:56', '2025-01-08 11:18:56');
INSERT INTO `activity_logs` VALUES (263, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:18:56', '2025-01-08 11:18:56');
INSERT INTO `activity_logs` VALUES (264, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:20:18', '2025-01-08 11:20:18');
INSERT INTO `activity_logs` VALUES (265, 'update', '1', 'User Mengubah Pengumuman Umum.', '2025-01-08 11:20:28', '2025-01-08 11:20:28');
INSERT INTO `activity_logs` VALUES (266, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:20:29', '2025-01-08 11:20:29');
INSERT INTO `activity_logs` VALUES (267, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:20:37', '2025-01-08 11:20:37');
INSERT INTO `activity_logs` VALUES (268, 'update', '1', 'User Mengubah Pengumuman Umum.', '2025-01-08 11:20:45', '2025-01-08 11:20:45');
INSERT INTO `activity_logs` VALUES (269, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:20:45', '2025-01-08 11:20:45');
INSERT INTO `activity_logs` VALUES (270, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:23:14', '2025-01-08 11:23:14');
INSERT INTO `activity_logs` VALUES (271, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:23:21', '2025-01-08 11:23:21');
INSERT INTO `activity_logs` VALUES (272, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:25:22', '2025-01-08 11:25:22');
INSERT INTO `activity_logs` VALUES (273, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:25:36', '2025-01-08 11:25:36');
INSERT INTO `activity_logs` VALUES (274, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:25:45', '2025-01-08 11:25:45');
INSERT INTO `activity_logs` VALUES (275, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:25:56', '2025-01-08 11:25:56');
INSERT INTO `activity_logs` VALUES (276, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:28:19', '2025-01-08 11:28:19');
INSERT INTO `activity_logs` VALUES (277, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:28:30', '2025-01-08 11:28:30');
INSERT INTO `activity_logs` VALUES (278, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:28:38', '2025-01-08 11:28:38');
INSERT INTO `activity_logs` VALUES (279, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:28:53', '2025-01-08 11:28:53');
INSERT INTO `activity_logs` VALUES (280, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:29:25', '2025-01-08 11:29:25');
INSERT INTO `activity_logs` VALUES (281, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 11:29:50', '2025-01-08 11:29:50');
INSERT INTO `activity_logs` VALUES (282, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 12:59:02', '2025-01-08 12:59:02');
INSERT INTO `activity_logs` VALUES (283, 'create', '1', 'User Membuat Pengumuman Terpilih.', '2025-01-08 12:59:16', '2025-01-08 12:59:16');
INSERT INTO `activity_logs` VALUES (284, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 12:59:16', '2025-01-08 12:59:16');
INSERT INTO `activity_logs` VALUES (285, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 12:59:17', '2025-01-08 12:59:17');
INSERT INTO `activity_logs` VALUES (286, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 12:59:21', '2025-01-08 12:59:21');
INSERT INTO `activity_logs` VALUES (287, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 12:59:33', '2025-01-08 12:59:33');
INSERT INTO `activity_logs` VALUES (288, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:20:08', '2025-01-08 13:20:08');
INSERT INTO `activity_logs` VALUES (289, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:20:25', '2025-01-08 13:20:25');
INSERT INTO `activity_logs` VALUES (290, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:20:25', '2025-01-08 13:20:25');
INSERT INTO `activity_logs` VALUES (291, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:20:35', '2025-01-08 13:20:35');
INSERT INTO `activity_logs` VALUES (292, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:20:36', '2025-01-08 13:20:36');
INSERT INTO `activity_logs` VALUES (293, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:20:58', '2025-01-08 13:20:58');
INSERT INTO `activity_logs` VALUES (294, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:21:08', '2025-01-08 13:21:08');
INSERT INTO `activity_logs` VALUES (295, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:21:08', '2025-01-08 13:21:08');
INSERT INTO `activity_logs` VALUES (296, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:23:19', '2025-01-08 13:23:19');
INSERT INTO `activity_logs` VALUES (297, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:23:32', '2025-01-08 13:23:32');
INSERT INTO `activity_logs` VALUES (298, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:24:47', '2025-01-08 13:24:47');
INSERT INTO `activity_logs` VALUES (299, 'create', '1', 'User Menghapus Pengumuman Terpilih.', '2025-01-08 13:24:52', '2025-01-08 13:24:52');
INSERT INTO `activity_logs` VALUES (300, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:24:52', '2025-01-08 13:24:52');
INSERT INTO `activity_logs` VALUES (301, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:25:31', '2025-01-08 13:25:31');
INSERT INTO `activity_logs` VALUES (302, 'create', '1', 'User Membuat Pengumuman Terpilih.', '2025-01-08 13:25:40', '2025-01-08 13:25:40');
INSERT INTO `activity_logs` VALUES (303, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:25:40', '2025-01-08 13:25:40');
INSERT INTO `activity_logs` VALUES (304, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:25:41', '2025-01-08 13:25:41');
INSERT INTO `activity_logs` VALUES (305, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:25:48', '2025-01-08 13:25:48');
INSERT INTO `activity_logs` VALUES (306, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:25:49', '2025-01-08 13:25:49');
INSERT INTO `activity_logs` VALUES (307, 'create', '1', 'User Menghapus Pengumuman Terpilih.', '2025-01-08 13:27:06', '2025-01-08 13:27:06');
INSERT INTO `activity_logs` VALUES (308, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:27:06', '2025-01-08 13:27:06');
INSERT INTO `activity_logs` VALUES (309, 'create', '1', 'User Membuat Pengumuman Terpilih.', '2025-01-08 13:27:18', '2025-01-08 13:27:18');
INSERT INTO `activity_logs` VALUES (310, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:27:18', '2025-01-08 13:27:18');
INSERT INTO `activity_logs` VALUES (311, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:27:18', '2025-01-08 13:27:18');
INSERT INTO `activity_logs` VALUES (312, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:27:26', '2025-01-08 13:27:26');
INSERT INTO `activity_logs` VALUES (313, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:27:26', '2025-01-08 13:27:26');
INSERT INTO `activity_logs` VALUES (314, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:31:32', '2025-01-08 13:31:32');
INSERT INTO `activity_logs` VALUES (315, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:31:42', '2025-01-08 13:31:42');
INSERT INTO `activity_logs` VALUES (316, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:31:42', '2025-01-08 13:31:42');
INSERT INTO `activity_logs` VALUES (317, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:32:11', '2025-01-08 13:32:11');
INSERT INTO `activity_logs` VALUES (318, 'create', '1', 'User Membuat Pengumuman Terpilih.', '2025-01-08 13:32:19', '2025-01-08 13:32:19');
INSERT INTO `activity_logs` VALUES (319, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:32:19', '2025-01-08 13:32:19');
INSERT INTO `activity_logs` VALUES (320, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:32:19', '2025-01-08 13:32:19');
INSERT INTO `activity_logs` VALUES (321, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:32:31', '2025-01-08 13:32:31');
INSERT INTO `activity_logs` VALUES (322, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:32:31', '2025-01-08 13:32:31');
INSERT INTO `activity_logs` VALUES (323, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:35:04', '2025-01-08 13:35:04');
INSERT INTO `activity_logs` VALUES (324, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:35:12', '2025-01-08 13:35:12');
INSERT INTO `activity_logs` VALUES (325, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:35:13', '2025-01-08 13:35:13');
INSERT INTO `activity_logs` VALUES (326, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:36:22', '2025-01-08 13:36:22');
INSERT INTO `activity_logs` VALUES (327, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:36:34', '2025-01-08 13:36:34');
INSERT INTO `activity_logs` VALUES (328, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:36:34', '2025-01-08 13:36:34');
INSERT INTO `activity_logs` VALUES (329, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:38:53', '2025-01-08 13:38:53');
INSERT INTO `activity_logs` VALUES (330, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:39:31', '2025-01-08 13:39:31');
INSERT INTO `activity_logs` VALUES (331, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:39:39', '2025-01-08 13:39:39');
INSERT INTO `activity_logs` VALUES (332, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:39:39', '2025-01-08 13:39:39');
INSERT INTO `activity_logs` VALUES (333, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:41:33', '2025-01-08 13:41:33');
INSERT INTO `activity_logs` VALUES (334, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:41:41', '2025-01-08 13:41:41');
INSERT INTO `activity_logs` VALUES (335, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:41:41', '2025-01-08 13:41:41');
INSERT INTO `activity_logs` VALUES (336, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:42:10', '2025-01-08 13:42:10');
INSERT INTO `activity_logs` VALUES (337, 'create', '1', 'User Membuat Pengumuman Terpilih.', '2025-01-08 13:42:18', '2025-01-08 13:42:18');
INSERT INTO `activity_logs` VALUES (338, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:42:18', '2025-01-08 13:42:18');
INSERT INTO `activity_logs` VALUES (339, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:42:19', '2025-01-08 13:42:19');
INSERT INTO `activity_logs` VALUES (340, 'create', '1', 'User Menghapus Pengumuman Terpilih.', '2025-01-08 13:42:27', '2025-01-08 13:42:27');
INSERT INTO `activity_logs` VALUES (341, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:42:27', '2025-01-08 13:42:27');
INSERT INTO `activity_logs` VALUES (342, 'create', '1', 'User Menghapus Pengumuman Terpilih.', '2025-01-08 13:42:29', '2025-01-08 13:42:29');
INSERT INTO `activity_logs` VALUES (343, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:42:30', '2025-01-08 13:42:30');
INSERT INTO `activity_logs` VALUES (344, 'create', '1', 'User Membuat Pengumuman Terpilih.', '2025-01-08 13:42:39', '2025-01-08 13:42:39');
INSERT INTO `activity_logs` VALUES (345, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:42:40', '2025-01-08 13:42:40');
INSERT INTO `activity_logs` VALUES (346, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:42:40', '2025-01-08 13:42:40');
INSERT INTO `activity_logs` VALUES (347, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:42:45', '2025-01-08 13:42:45');
INSERT INTO `activity_logs` VALUES (348, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:42:46', '2025-01-08 13:42:46');
INSERT INTO `activity_logs` VALUES (349, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:43:13', '2025-01-08 13:43:13');
INSERT INTO `activity_logs` VALUES (350, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:43:14', '2025-01-08 13:43:14');
INSERT INTO `activity_logs` VALUES (351, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:53:39', '2025-01-08 13:53:39');
INSERT INTO `activity_logs` VALUES (352, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:53:49', '2025-01-08 13:53:49');
INSERT INTO `activity_logs` VALUES (353, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:53:49', '2025-01-08 13:53:49');
INSERT INTO `activity_logs` VALUES (354, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-08 13:53:58', '2025-01-08 13:53:58');
INSERT INTO `activity_logs` VALUES (355, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:53:59', '2025-01-08 13:53:59');
INSERT INTO `activity_logs` VALUES (356, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 13:54:59', '2025-01-08 13:54:59');
INSERT INTO `activity_logs` VALUES (357, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:55:03', '2025-01-08 13:55:03');
INSERT INTO `activity_logs` VALUES (358, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 13:55:25', '2025-01-08 13:55:25');
INSERT INTO `activity_logs` VALUES (359, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 13:55:35', '2025-01-08 13:55:35');
INSERT INTO `activity_logs` VALUES (360, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-08 13:55:41', '2025-01-08 13:55:41');
INSERT INTO `activity_logs` VALUES (361, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:55:47', '2025-01-08 13:55:47');
INSERT INTO `activity_logs` VALUES (362, 'create', '1', 'User Membuat Jurusan.', '2025-01-08 13:55:52', '2025-01-08 13:55:52');
INSERT INTO `activity_logs` VALUES (363, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:55:53', '2025-01-08 13:55:53');
INSERT INTO `activity_logs` VALUES (364, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:55:53', '2025-01-08 13:55:53');
INSERT INTO `activity_logs` VALUES (365, 'create', '1', 'User Membuat Jurusan.', '2025-01-08 13:56:00', '2025-01-08 13:56:00');
INSERT INTO `activity_logs` VALUES (366, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:00', '2025-01-08 13:56:00');
INSERT INTO `activity_logs` VALUES (367, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:00', '2025-01-08 13:56:00');
INSERT INTO `activity_logs` VALUES (368, 'create', '1', 'User Membuat Jurusan.', '2025-01-08 13:56:06', '2025-01-08 13:56:06');
INSERT INTO `activity_logs` VALUES (369, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:06', '2025-01-08 13:56:06');
INSERT INTO `activity_logs` VALUES (370, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:07', '2025-01-08 13:56:07');
INSERT INTO `activity_logs` VALUES (371, 'create', '1', 'User Membuat Jurusan.', '2025-01-08 13:56:12', '2025-01-08 13:56:12');
INSERT INTO `activity_logs` VALUES (372, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:13', '2025-01-08 13:56:13');
INSERT INTO `activity_logs` VALUES (373, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:13', '2025-01-08 13:56:13');
INSERT INTO `activity_logs` VALUES (374, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:17', '2025-01-08 13:56:17');
INSERT INTO `activity_logs` VALUES (375, 'create', '1', 'User Membuat Kelas.', '2025-01-08 13:56:27', '2025-01-08 13:56:27');
INSERT INTO `activity_logs` VALUES (376, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:27', '2025-01-08 13:56:27');
INSERT INTO `activity_logs` VALUES (377, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:28', '2025-01-08 13:56:28');
INSERT INTO `activity_logs` VALUES (378, 'create', '1', 'User Membuat Kelas.', '2025-01-08 13:56:35', '2025-01-08 13:56:35');
INSERT INTO `activity_logs` VALUES (379, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:35', '2025-01-08 13:56:35');
INSERT INTO `activity_logs` VALUES (380, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:35', '2025-01-08 13:56:35');
INSERT INTO `activity_logs` VALUES (381, 'create', '1', 'User Membuat Kelas.', '2025-01-08 13:56:42', '2025-01-08 13:56:42');
INSERT INTO `activity_logs` VALUES (382, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:42', '2025-01-08 13:56:42');
INSERT INTO `activity_logs` VALUES (383, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:42', '2025-01-08 13:56:42');
INSERT INTO `activity_logs` VALUES (384, 'create', '1', 'User Membuat Kelas.', '2025-01-08 13:56:54', '2025-01-08 13:56:54');
INSERT INTO `activity_logs` VALUES (385, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:55', '2025-01-08 13:56:55');
INSERT INTO `activity_logs` VALUES (386, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-08 13:56:55', '2025-01-08 13:56:55');
INSERT INTO `activity_logs` VALUES (387, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:06:16', '2025-01-08 14:06:16');
INSERT INTO `activity_logs` VALUES (388, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:08:12', '2025-01-08 14:08:12');
INSERT INTO `activity_logs` VALUES (389, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:15:49', '2025-01-08 14:15:49');
INSERT INTO `activity_logs` VALUES (390, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:21:27', '2025-01-08 14:21:27');
INSERT INTO `activity_logs` VALUES (391, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:25:55', '2025-01-08 14:25:55');
INSERT INTO `activity_logs` VALUES (392, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 14:25:59', '2025-01-08 14:25:59');
INSERT INTO `activity_logs` VALUES (393, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:25:59', '2025-01-08 14:25:59');
INSERT INTO `activity_logs` VALUES (394, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 14:26:13', '2025-01-08 14:26:13');
INSERT INTO `activity_logs` VALUES (395, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:26:14', '2025-01-08 14:26:14');
INSERT INTO `activity_logs` VALUES (396, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:28:06', '2025-01-08 14:28:06');
INSERT INTO `activity_logs` VALUES (397, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:41:37', '2025-01-08 14:41:37');
INSERT INTO `activity_logs` VALUES (398, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 14:57:17', '2025-01-08 14:57:17');
INSERT INTO `activity_logs` VALUES (399, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:07:37', '2025-01-08 15:07:37');
INSERT INTO `activity_logs` VALUES (400, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:09:48', '2025-01-08 15:09:48');
INSERT INTO `activity_logs` VALUES (401, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:10:16', '2025-01-08 15:10:16');
INSERT INTO `activity_logs` VALUES (402, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:11:00', '2025-01-08 15:11:00');
INSERT INTO `activity_logs` VALUES (403, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:13:48', '2025-01-08 15:13:48');
INSERT INTO `activity_logs` VALUES (404, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:14:30', '2025-01-08 15:14:30');
INSERT INTO `activity_logs` VALUES (405, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:19:21', '2025-01-08 15:19:21');
INSERT INTO `activity_logs` VALUES (406, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:19:27', '2025-01-08 15:19:27');
INSERT INTO `activity_logs` VALUES (407, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:19:42', '2025-01-08 15:19:42');
INSERT INTO `activity_logs` VALUES (408, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:19:57', '2025-01-08 15:19:57');
INSERT INTO `activity_logs` VALUES (409, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:20:57', '2025-01-08 15:20:57');
INSERT INTO `activity_logs` VALUES (410, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:21:01', '2025-01-08 15:21:01');
INSERT INTO `activity_logs` VALUES (411, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:22:25', '2025-01-08 15:22:25');
INSERT INTO `activity_logs` VALUES (412, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:22:30', '2025-01-08 15:22:30');
INSERT INTO `activity_logs` VALUES (413, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:22:36', '2025-01-08 15:22:36');
INSERT INTO `activity_logs` VALUES (414, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:22:40', '2025-01-08 15:22:40');
INSERT INTO `activity_logs` VALUES (415, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:23:56', '2025-01-08 15:23:56');
INSERT INTO `activity_logs` VALUES (416, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:24:05', '2025-01-08 15:24:05');
INSERT INTO `activity_logs` VALUES (417, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:24:38', '2025-01-08 15:24:38');
INSERT INTO `activity_logs` VALUES (418, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:26:07', '2025-01-08 15:26:07');
INSERT INTO `activity_logs` VALUES (419, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:30:47', '2025-01-08 15:30:47');
INSERT INTO `activity_logs` VALUES (420, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:31:41', '2025-01-08 15:31:41');
INSERT INTO `activity_logs` VALUES (421, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:35:17', '2025-01-08 15:35:17');
INSERT INTO `activity_logs` VALUES (422, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:38:12', '2025-01-08 15:38:12');
INSERT INTO `activity_logs` VALUES (423, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:41:08', '2025-01-08 15:41:08');
INSERT INTO `activity_logs` VALUES (424, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:42:31', '2025-01-08 15:42:31');
INSERT INTO `activity_logs` VALUES (425, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:43:25', '2025-01-08 15:43:25');
INSERT INTO `activity_logs` VALUES (426, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:44:41', '2025-01-08 15:44:41');
INSERT INTO `activity_logs` VALUES (427, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 15:44:56', '2025-01-08 15:44:56');
INSERT INTO `activity_logs` VALUES (428, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:44:57', '2025-01-08 15:44:57');
INSERT INTO `activity_logs` VALUES (429, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 15:45:06', '2025-01-08 15:45:06');
INSERT INTO `activity_logs` VALUES (430, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:45:06', '2025-01-08 15:45:06');
INSERT INTO `activity_logs` VALUES (431, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-08 15:50:32', '2025-01-08 15:50:32');
INSERT INTO `activity_logs` VALUES (432, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:51:29', '2025-01-08 15:51:29');
INSERT INTO `activity_logs` VALUES (433, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:52:28', '2025-01-08 15:52:28');
INSERT INTO `activity_logs` VALUES (434, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 15:54:23', '2025-01-08 15:54:23');
INSERT INTO `activity_logs` VALUES (435, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:02:56', '2025-01-08 16:02:56');
INSERT INTO `activity_logs` VALUES (436, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:09:39', '2025-01-08 16:09:39');
INSERT INTO `activity_logs` VALUES (437, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:14:48', '2025-01-08 16:14:48');
INSERT INTO `activity_logs` VALUES (438, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:19:44', '2025-01-08 16:19:44');
INSERT INTO `activity_logs` VALUES (439, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:24:35', '2025-01-08 16:24:35');
INSERT INTO `activity_logs` VALUES (440, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:28:58', '2025-01-08 16:28:58');
INSERT INTO `activity_logs` VALUES (441, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:30:52', '2025-01-08 16:30:52');
INSERT INTO `activity_logs` VALUES (442, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:31:41', '2025-01-08 16:31:41');
INSERT INTO `activity_logs` VALUES (443, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:33:24', '2025-01-08 16:33:24');
INSERT INTO `activity_logs` VALUES (444, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:34:36', '2025-01-08 16:34:36');
INSERT INTO `activity_logs` VALUES (445, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:34:54', '2025-01-08 16:34:54');
INSERT INTO `activity_logs` VALUES (446, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:35:10', '2025-01-08 16:35:10');
INSERT INTO `activity_logs` VALUES (447, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:36:20', '2025-01-08 16:36:20');
INSERT INTO `activity_logs` VALUES (448, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-08 16:36:25', '2025-01-08 16:36:25');
INSERT INTO `activity_logs` VALUES (449, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:36:26', '2025-01-08 16:36:26');
INSERT INTO `activity_logs` VALUES (450, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:36:26', '2025-01-08 16:36:26');
INSERT INTO `activity_logs` VALUES (451, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-08 16:36:33', '2025-01-08 16:36:33');
INSERT INTO `activity_logs` VALUES (452, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-08 16:36:33', '2025-01-08 16:36:33');
INSERT INTO `activity_logs` VALUES (453, 'create', NULL, 'User Masuk ke Pengumuman User.', '2025-01-09 02:03:49', '2025-01-09 02:03:49');
INSERT INTO `activity_logs` VALUES (454, 'create', NULL, 'User Masuk ke Pengumuman User.', '2025-01-09 02:05:25', '2025-01-09 02:05:25');
INSERT INTO `activity_logs` VALUES (455, 'create', NULL, 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:06:19', '2025-01-09 02:06:19');
INSERT INTO `activity_logs` VALUES (456, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-09 02:06:29', '2025-01-09 02:06:29');
INSERT INTO `activity_logs` VALUES (457, 'create', '1', 'User Masuk Ke Restore Edit.', '2025-01-09 02:06:37', '2025-01-09 02:06:37');
INSERT INTO `activity_logs` VALUES (458, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:06:49', '2025-01-09 02:06:49');
INSERT INTO `activity_logs` VALUES (459, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-09 02:06:54', '2025-01-09 02:06:54');
INSERT INTO `activity_logs` VALUES (460, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-09 02:07:41', '2025-01-09 02:07:41');
INSERT INTO `activity_logs` VALUES (461, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-09 02:08:04', '2025-01-09 02:08:04');
INSERT INTO `activity_logs` VALUES (462, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:08:14', '2025-01-09 02:08:14');
INSERT INTO `activity_logs` VALUES (463, 'create', '1', 'User Membuat Pengumuman Umum.', '2025-01-09 02:08:40', '2025-01-09 02:08:40');
INSERT INTO `activity_logs` VALUES (464, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:08:40', '2025-01-09 02:08:40');
INSERT INTO `activity_logs` VALUES (465, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:08:41', '2025-01-09 02:08:41');
INSERT INTO `activity_logs` VALUES (466, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:12:07', '2025-01-09 02:12:07');
INSERT INTO `activity_logs` VALUES (467, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:12:43', '2025-01-09 02:12:43');
INSERT INTO `activity_logs` VALUES (468, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-09 02:14:11', '2025-01-09 02:14:11');
INSERT INTO `activity_logs` VALUES (469, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:14:13', '2025-01-09 02:14:13');
INSERT INTO `activity_logs` VALUES (470, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:15:15', '2025-01-09 02:15:15');
INSERT INTO `activity_logs` VALUES (471, 'create', '1', 'User Mengatur Pengumuman Umum.', '2025-01-09 02:15:22', '2025-01-09 02:15:22');
INSERT INTO `activity_logs` VALUES (472, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:15:22', '2025-01-09 02:15:22');
INSERT INTO `activity_logs` VALUES (473, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:18:33', '2025-01-09 02:18:33');
INSERT INTO `activity_logs` VALUES (474, 'create', '1', 'User Masuk Ke Setting.', '2025-01-09 02:18:37', '2025-01-09 02:18:37');
INSERT INTO `activity_logs` VALUES (475, 'create', '1', 'User Masuk Ke Setting.', '2025-01-09 02:18:43', '2025-01-09 02:18:43');
INSERT INTO `activity_logs` VALUES (476, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:19:18', '2025-01-09 02:19:18');
INSERT INTO `activity_logs` VALUES (477, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:19:35', '2025-01-09 02:19:35');
INSERT INTO `activity_logs` VALUES (478, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:20:20', '2025-01-09 02:20:20');
INSERT INTO `activity_logs` VALUES (479, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:21:04', '2025-01-09 02:21:04');
INSERT INTO `activity_logs` VALUES (480, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:21:16', '2025-01-09 02:21:16');
INSERT INTO `activity_logs` VALUES (481, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:23:53', '2025-01-09 02:23:53');
INSERT INTO `activity_logs` VALUES (482, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:23:59', '2025-01-09 02:23:59');
INSERT INTO `activity_logs` VALUES (483, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 02:24:43', '2025-01-09 02:24:43');
INSERT INTO `activity_logs` VALUES (484, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:25:19', '2025-01-09 02:25:19');
INSERT INTO `activity_logs` VALUES (485, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:25:38', '2025-01-09 02:25:38');
INSERT INTO `activity_logs` VALUES (486, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:26:12', '2025-01-09 02:26:12');
INSERT INTO `activity_logs` VALUES (487, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:26:18', '2025-01-09 02:26:18');
INSERT INTO `activity_logs` VALUES (488, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:26:58', '2025-01-09 02:26:58');
INSERT INTO `activity_logs` VALUES (489, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:27:42', '2025-01-09 02:27:42');
INSERT INTO `activity_logs` VALUES (490, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:28:28', '2025-01-09 02:28:28');
INSERT INTO `activity_logs` VALUES (491, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:30:29', '2025-01-09 02:30:29');
INSERT INTO `activity_logs` VALUES (492, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:31:25', '2025-01-09 02:31:25');
INSERT INTO `activity_logs` VALUES (493, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:37:06', '2025-01-09 02:37:06');
INSERT INTO `activity_logs` VALUES (494, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:38:18', '2025-01-09 02:38:18');
INSERT INTO `activity_logs` VALUES (495, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:38:32', '2025-01-09 02:38:32');
INSERT INTO `activity_logs` VALUES (496, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:38:38', '2025-01-09 02:38:38');
INSERT INTO `activity_logs` VALUES (497, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:38:48', '2025-01-09 02:38:48');
INSERT INTO `activity_logs` VALUES (498, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:38:52', '2025-01-09 02:38:52');
INSERT INTO `activity_logs` VALUES (499, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:39:38', '2025-01-09 02:39:38');
INSERT INTO `activity_logs` VALUES (500, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:40:05', '2025-01-09 02:40:05');
INSERT INTO `activity_logs` VALUES (501, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:40:17', '2025-01-09 02:40:17');
INSERT INTO `activity_logs` VALUES (502, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:42:25', '2025-01-09 02:42:25');
INSERT INTO `activity_logs` VALUES (503, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:42:37', '2025-01-09 02:42:37');
INSERT INTO `activity_logs` VALUES (504, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:44:09', '2025-01-09 02:44:09');
INSERT INTO `activity_logs` VALUES (505, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-09 02:45:18', '2025-01-09 02:45:18');
INSERT INTO `activity_logs` VALUES (506, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:45:19', '2025-01-09 02:45:19');
INSERT INTO `activity_logs` VALUES (507, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:46:17', '2025-01-09 02:46:17');
INSERT INTO `activity_logs` VALUES (508, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:46:22', '2025-01-09 02:46:22');
INSERT INTO `activity_logs` VALUES (509, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:47:16', '2025-01-09 02:47:16');
INSERT INTO `activity_logs` VALUES (510, 'create', '1', 'User Mengatur Pengumuman Terpilih.', '2025-01-09 02:47:55', '2025-01-09 02:47:55');
INSERT INTO `activity_logs` VALUES (511, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:47:56', '2025-01-09 02:47:56');
INSERT INTO `activity_logs` VALUES (512, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:49:44', '2025-01-09 02:49:44');
INSERT INTO `activity_logs` VALUES (513, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:51:25', '2025-01-09 02:51:25');
INSERT INTO `activity_logs` VALUES (514, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:52:45', '2025-01-09 02:52:45');
INSERT INTO `activity_logs` VALUES (515, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:53:08', '2025-01-09 02:53:08');
INSERT INTO `activity_logs` VALUES (516, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:54:57', '2025-01-09 02:54:57');
INSERT INTO `activity_logs` VALUES (517, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 02:55:06', '2025-01-09 02:55:06');
INSERT INTO `activity_logs` VALUES (518, 'create', '1', 'User Masuk Ke Setting.', '2025-01-09 03:05:18', '2025-01-09 03:05:18');
INSERT INTO `activity_logs` VALUES (519, 'create', '1', 'User Masuk Ke Setting.', '2025-01-09 03:05:57', '2025-01-09 03:05:57');
INSERT INTO `activity_logs` VALUES (520, 'create', '1', 'User Masuk Ke Setting.', '2025-01-09 03:06:02', '2025-01-09 03:06:02');
INSERT INTO `activity_logs` VALUES (521, 'create', '1', 'User Masuk Ke Setting.', '2025-01-09 03:06:09', '2025-01-09 03:06:09');
INSERT INTO `activity_logs` VALUES (522, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 03:06:58', '2025-01-09 03:06:58');
INSERT INTO `activity_logs` VALUES (523, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-09 05:37:05', '2025-01-09 05:37:05');
INSERT INTO `activity_logs` VALUES (524, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 05:37:08', '2025-01-09 05:37:08');
INSERT INTO `activity_logs` VALUES (525, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 05:37:14', '2025-01-09 05:37:14');
INSERT INTO `activity_logs` VALUES (526, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 05:47:00', '2025-01-09 05:47:00');
INSERT INTO `activity_logs` VALUES (527, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 05:48:10', '2025-01-09 05:48:10');
INSERT INTO `activity_logs` VALUES (528, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:23:26', '2025-01-09 06:23:26');
INSERT INTO `activity_logs` VALUES (529, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:24:14', '2025-01-09 06:24:14');
INSERT INTO `activity_logs` VALUES (530, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:25:08', '2025-01-09 06:25:08');
INSERT INTO `activity_logs` VALUES (531, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:25:57', '2025-01-09 06:25:57');
INSERT INTO `activity_logs` VALUES (532, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:26:04', '2025-01-09 06:26:04');
INSERT INTO `activity_logs` VALUES (533, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:26:15', '2025-01-09 06:26:15');
INSERT INTO `activity_logs` VALUES (534, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:28:03', '2025-01-09 06:28:03');
INSERT INTO `activity_logs` VALUES (535, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:30:19', '2025-01-09 06:30:19');
INSERT INTO `activity_logs` VALUES (536, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:33:46', '2025-01-09 06:33:46');
INSERT INTO `activity_logs` VALUES (537, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:34:56', '2025-01-09 06:34:56');
INSERT INTO `activity_logs` VALUES (538, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:35:05', '2025-01-09 06:35:05');
INSERT INTO `activity_logs` VALUES (539, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:35:41', '2025-01-09 06:35:41');
INSERT INTO `activity_logs` VALUES (540, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:38:26', '2025-01-09 06:38:26');
INSERT INTO `activity_logs` VALUES (541, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:40:19', '2025-01-09 06:40:19');
INSERT INTO `activity_logs` VALUES (542, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:42:01', '2025-01-09 06:42:01');
INSERT INTO `activity_logs` VALUES (543, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:42:45', '2025-01-09 06:42:45');
INSERT INTO `activity_logs` VALUES (544, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:43:17', '2025-01-09 06:43:17');
INSERT INTO `activity_logs` VALUES (545, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:43:59', '2025-01-09 06:43:59');
INSERT INTO `activity_logs` VALUES (546, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:44:24', '2025-01-09 06:44:24');
INSERT INTO `activity_logs` VALUES (547, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:44:38', '2025-01-09 06:44:38');
INSERT INTO `activity_logs` VALUES (548, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:46:06', '2025-01-09 06:46:06');
INSERT INTO `activity_logs` VALUES (549, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:46:30', '2025-01-09 06:46:30');
INSERT INTO `activity_logs` VALUES (550, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 06:52:14', '2025-01-09 06:52:14');
INSERT INTO `activity_logs` VALUES (551, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-09 09:51:44', '2025-01-09 09:51:44');
INSERT INTO `activity_logs` VALUES (552, 'create', '1', 'User Masuk Ke Setting.', '2025-01-09 09:51:50', '2025-01-09 09:51:50');
INSERT INTO `activity_logs` VALUES (553, 'create', '1', 'User Masuk Ke Setting.', '2025-01-09 09:52:19', '2025-01-09 09:52:19');
INSERT INTO `activity_logs` VALUES (554, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 09:53:11', '2025-01-09 09:53:11');
INSERT INTO `activity_logs` VALUES (555, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 09:55:19', '2025-01-09 09:55:19');
INSERT INTO `activity_logs` VALUES (556, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:02:24', '2025-01-09 10:02:24');
INSERT INTO `activity_logs` VALUES (557, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:02:26', '2025-01-09 10:02:26');
INSERT INTO `activity_logs` VALUES (558, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:03:31', '2025-01-09 10:03:31');
INSERT INTO `activity_logs` VALUES (559, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:04:14', '2025-01-09 10:04:14');
INSERT INTO `activity_logs` VALUES (560, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:04:33', '2025-01-09 10:04:33');
INSERT INTO `activity_logs` VALUES (561, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:05:02', '2025-01-09 10:05:02');
INSERT INTO `activity_logs` VALUES (562, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:09:10', '2025-01-09 10:09:10');
INSERT INTO `activity_logs` VALUES (563, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:28:46', '2025-01-09 10:28:46');
INSERT INTO `activity_logs` VALUES (564, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:32:23', '2025-01-09 10:32:23');
INSERT INTO `activity_logs` VALUES (565, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:33:19', '2025-01-09 10:33:19');
INSERT INTO `activity_logs` VALUES (566, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:41:54', '2025-01-09 10:41:54');
INSERT INTO `activity_logs` VALUES (567, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 10:51:50', '2025-01-09 10:51:50');
INSERT INTO `activity_logs` VALUES (568, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 10:52:29', '2025-01-09 10:52:29');
INSERT INTO `activity_logs` VALUES (569, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 10:52:42', '2025-01-09 10:52:42');
INSERT INTO `activity_logs` VALUES (570, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 10:54:10', '2025-01-09 10:54:10');
INSERT INTO `activity_logs` VALUES (571, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 11:37:14', '2025-01-09 11:37:14');
INSERT INTO `activity_logs` VALUES (572, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 11:37:55', '2025-01-09 11:37:55');
INSERT INTO `activity_logs` VALUES (573, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 11:55:03', '2025-01-09 11:55:03');
INSERT INTO `activity_logs` VALUES (574, 'create', '1', 'User Masuk Ke User.', '2025-01-09 13:33:32', '2025-01-09 13:33:32');
INSERT INTO `activity_logs` VALUES (575, 'create', '4', 'User  Masuk Ke Dashboard.', '2025-01-09 13:44:11', '2025-01-09 13:44:11');
INSERT INTO `activity_logs` VALUES (576, 'create', NULL, 'User Masuk ke Jurusan.', '2025-01-09 13:46:24', '2025-01-09 13:46:24');
INSERT INTO `activity_logs` VALUES (577, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-09 13:46:46', '2025-01-09 13:46:46');
INSERT INTO `activity_logs` VALUES (578, 'create', '1', 'User Masuk Ke User.', '2025-01-09 13:50:41', '2025-01-09 13:50:41');
INSERT INTO `activity_logs` VALUES (579, 'create', '1', 'User Masuk Ke Detail.', '2025-01-09 13:51:07', '2025-01-09 13:51:07');
INSERT INTO `activity_logs` VALUES (580, 'create', '1', 'User Masuk Ke User.', '2025-01-09 14:15:56', '2025-01-09 14:15:56');
INSERT INTO `activity_logs` VALUES (581, 'create', '1', 'User Menghapus User.', '2025-01-09 14:16:07', '2025-01-09 14:16:07');
INSERT INTO `activity_logs` VALUES (582, 'create', '1', 'User Masuk Ke User.', '2025-01-09 14:16:07', '2025-01-09 14:16:07');
INSERT INTO `activity_logs` VALUES (583, 'create', '1', 'User Menghapus User.', '2025-01-09 14:16:11', '2025-01-09 14:16:11');
INSERT INTO `activity_logs` VALUES (584, 'create', '1', 'User Masuk Ke User.', '2025-01-09 14:16:11', '2025-01-09 14:16:11');
INSERT INTO `activity_logs` VALUES (585, 'create', '1', 'User Menambah User.', '2025-01-09 14:16:26', '2025-01-09 14:16:26');
INSERT INTO `activity_logs` VALUES (586, 'create', '1', 'User Masuk Ke User.', '2025-01-09 14:16:27', '2025-01-09 14:16:27');
INSERT INTO `activity_logs` VALUES (587, 'create', '1', 'User Masuk Ke Detail.', '2025-01-09 14:16:31', '2025-01-09 14:16:31');
INSERT INTO `activity_logs` VALUES (588, 'create', '1', 'User Mengupdate User.', '2025-01-09 14:16:37', '2025-01-09 14:16:37');
INSERT INTO `activity_logs` VALUES (589, 'create', '1', 'User Masuk Ke User.', '2025-01-09 14:16:38', '2025-01-09 14:16:38');
INSERT INTO `activity_logs` VALUES (590, 'create', '1', 'User Menghapus User.', '2025-01-09 14:16:46', '2025-01-09 14:16:46');
INSERT INTO `activity_logs` VALUES (591, 'create', '1', 'User Masuk Ke User.', '2025-01-09 14:16:47', '2025-01-09 14:16:47');
INSERT INTO `activity_logs` VALUES (592, 'create', '1', 'User Masuk Ke Restore Edit.', '2025-01-09 14:16:51', '2025-01-09 14:16:51');
INSERT INTO `activity_logs` VALUES (593, 'create', '1', 'User Masuk Ke Restore Delete.', '2025-01-09 14:16:57', '2025-01-09 14:16:57');
INSERT INTO `activity_logs` VALUES (594, 'create', '1', 'User Merestore Data User.', '2025-01-09 14:17:05', '2025-01-09 14:17:05');
INSERT INTO `activity_logs` VALUES (595, 'create', '1', 'User Masuk Ke Restore Delete.', '2025-01-09 14:17:05', '2025-01-09 14:17:05');
INSERT INTO `activity_logs` VALUES (596, 'create', '1', 'User Masuk Ke Restore Edit.', '2025-01-09 14:17:09', '2025-01-09 14:17:09');
INSERT INTO `activity_logs` VALUES (597, 'create', '1', 'User Merestore Data User.', '2025-01-09 14:17:14', '2025-01-09 14:17:14');
INSERT INTO `activity_logs` VALUES (598, 'create', '1', 'User Masuk Ke Restore Edit.', '2025-01-09 14:17:14', '2025-01-09 14:17:14');
INSERT INTO `activity_logs` VALUES (599, 'create', '1', 'User Masuk Ke User.', '2025-01-09 14:17:18', '2025-01-09 14:17:18');
INSERT INTO `activity_logs` VALUES (600, 'create', '1', 'User Masuk Ke Detail.', '2025-01-09 14:17:21', '2025-01-09 14:17:21');
INSERT INTO `activity_logs` VALUES (601, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-09 14:29:50', '2025-01-09 14:29:50');
INSERT INTO `activity_logs` VALUES (602, 'create', '1', 'User Masuk Ke Setting.', '2025-01-09 14:29:54', '2025-01-09 14:29:54');
INSERT INTO `activity_logs` VALUES (603, 'create', '1', 'User Masuk Ke User.', '2025-01-09 14:30:12', '2025-01-09 14:30:12');
INSERT INTO `activity_logs` VALUES (604, 'create', '1', 'User Masuk ke Pengumuman User.', '2025-01-09 14:30:23', '2025-01-09 14:30:23');
INSERT INTO `activity_logs` VALUES (605, 'create', '1', 'User Masuk ke Pengumuman Terpilih.', '2025-01-09 14:30:43', '2025-01-09 14:30:43');
INSERT INTO `activity_logs` VALUES (606, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-09 14:30:55', '2025-01-09 14:30:55');
INSERT INTO `activity_logs` VALUES (607, 'create', '1', 'User Masuk ke Jurusan.', '2025-01-09 14:31:03', '2025-01-09 14:31:03');
INSERT INTO `activity_logs` VALUES (608, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-13 20:59:52', '2025-01-13 20:59:52');
INSERT INTO `activity_logs` VALUES (609, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-13 21:03:19', '2025-01-13 21:03:19');
INSERT INTO `activity_logs` VALUES (610, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-13 21:03:23', '2025-01-13 21:03:23');
INSERT INTO `activity_logs` VALUES (611, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-13 21:03:46', '2025-01-13 21:03:46');
INSERT INTO `activity_logs` VALUES (612, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:03:50', '2025-01-13 21:03:50');
INSERT INTO `activity_logs` VALUES (613, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:04:10', '2025-01-13 21:04:10');
INSERT INTO `activity_logs` VALUES (614, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:04:15', '2025-01-13 21:04:15');
INSERT INTO `activity_logs` VALUES (615, 'create', '1', 'User Menambah Wahana.', '2025-01-13 21:04:29', '2025-01-13 21:04:29');
INSERT INTO `activity_logs` VALUES (616, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:04:29', '2025-01-13 21:04:29');
INSERT INTO `activity_logs` VALUES (617, 'create', '1', 'User Menambah Wahana.', '2025-01-13 21:04:47', '2025-01-13 21:04:47');
INSERT INTO `activity_logs` VALUES (618, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:04:48', '2025-01-13 21:04:48');
INSERT INTO `activity_logs` VALUES (619, 'create', '1', 'User Menambah Wahana.', '2025-01-13 21:05:29', '2025-01-13 21:05:29');
INSERT INTO `activity_logs` VALUES (620, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:05:29', '2025-01-13 21:05:29');
INSERT INTO `activity_logs` VALUES (621, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:05:34', '2025-01-13 21:05:34');
INSERT INTO `activity_logs` VALUES (622, 'create', '1', 'User Menambah Anak.', '2025-01-13 21:05:56', '2025-01-13 21:05:56');
INSERT INTO `activity_logs` VALUES (623, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:05:57', '2025-01-13 21:05:57');
INSERT INTO `activity_logs` VALUES (624, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:06:24', '2025-01-13 21:06:24');
INSERT INTO `activity_logs` VALUES (625, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:06:33', '2025-01-13 21:06:33');
INSERT INTO `activity_logs` VALUES (626, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:06:40', '2025-01-13 21:06:40');
INSERT INTO `activity_logs` VALUES (627, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:11:03', '2025-01-13 21:11:03');
INSERT INTO `activity_logs` VALUES (628, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:11:16', '2025-01-13 21:11:16');
INSERT INTO `activity_logs` VALUES (629, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:11:22', '2025-01-13 21:11:22');
INSERT INTO `activity_logs` VALUES (630, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:11:29', '2025-01-13 21:11:29');
INSERT INTO `activity_logs` VALUES (631, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:11:36', '2025-01-13 21:11:36');
INSERT INTO `activity_logs` VALUES (632, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:11:49', '2025-01-13 21:11:49');
INSERT INTO `activity_logs` VALUES (633, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:14:15', '2025-01-13 21:14:15');
INSERT INTO `activity_logs` VALUES (634, 'create', '1', 'User Menambah Anak.', '2025-01-13 21:14:40', '2025-01-13 21:14:40');
INSERT INTO `activity_logs` VALUES (635, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:14:40', '2025-01-13 21:14:40');
INSERT INTO `activity_logs` VALUES (636, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:15:18', '2025-01-13 21:15:18');
INSERT INTO `activity_logs` VALUES (637, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:36:36', '2025-01-13 21:36:36');
INSERT INTO `activity_logs` VALUES (638, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:46:02', '2025-01-13 21:46:02');
INSERT INTO `activity_logs` VALUES (639, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:54:22', '2025-01-13 21:54:22');
INSERT INTO `activity_logs` VALUES (640, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:54:48', '2025-01-13 21:54:48');
INSERT INTO `activity_logs` VALUES (641, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 21:55:07', '2025-01-13 21:55:07');
INSERT INTO `activity_logs` VALUES (642, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:10:35', '2025-01-13 22:10:35');
INSERT INTO `activity_logs` VALUES (643, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:10:45', '2025-01-13 22:10:45');
INSERT INTO `activity_logs` VALUES (644, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:13:08', '2025-01-13 22:13:08');
INSERT INTO `activity_logs` VALUES (645, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:15:12', '2025-01-13 22:15:12');
INSERT INTO `activity_logs` VALUES (646, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:15:18', '2025-01-13 22:15:18');
INSERT INTO `activity_logs` VALUES (647, 'create', '1', 'User Menghapus Anak.', '2025-01-13 22:15:31', '2025-01-13 22:15:31');
INSERT INTO `activity_logs` VALUES (648, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:15:31', '2025-01-13 22:15:31');
INSERT INTO `activity_logs` VALUES (649, 'create', '1', 'User Menambah Anak.', '2025-01-13 22:16:09', '2025-01-13 22:16:09');
INSERT INTO `activity_logs` VALUES (650, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:16:09', '2025-01-13 22:16:09');
INSERT INTO `activity_logs` VALUES (651, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:16:15', '2025-01-13 22:16:15');
INSERT INTO `activity_logs` VALUES (652, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:16:55', '2025-01-13 22:16:55');
INSERT INTO `activity_logs` VALUES (653, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:17:08', '2025-01-13 22:17:08');
INSERT INTO `activity_logs` VALUES (654, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:21:21', '2025-01-13 22:21:21');
INSERT INTO `activity_logs` VALUES (655, 'create', '1', 'User Menghapus Anak.', '2025-01-13 22:21:25', '2025-01-13 22:21:25');
INSERT INTO `activity_logs` VALUES (656, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:21:25', '2025-01-13 22:21:25');
INSERT INTO `activity_logs` VALUES (657, 'create', '1', 'User Menambah Anak.', '2025-01-13 22:21:32', '2025-01-13 22:21:32');
INSERT INTO `activity_logs` VALUES (658, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:21:32', '2025-01-13 22:21:32');
INSERT INTO `activity_logs` VALUES (659, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:21:39', '2025-01-13 22:21:39');
INSERT INTO `activity_logs` VALUES (660, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:26:12', '2025-01-13 22:26:12');
INSERT INTO `activity_logs` VALUES (661, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:27:08', '2025-01-13 22:27:08');
INSERT INTO `activity_logs` VALUES (662, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:27:22', '2025-01-13 22:27:22');
INSERT INTO `activity_logs` VALUES (663, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:28:28', '2025-01-13 22:28:28');
INSERT INTO `activity_logs` VALUES (664, 'create', '1', 'User Menambah Anak.', '2025-01-13 22:28:38', '2025-01-13 22:28:38');
INSERT INTO `activity_logs` VALUES (665, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:28:38', '2025-01-13 22:28:38');
INSERT INTO `activity_logs` VALUES (666, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:28:49', '2025-01-13 22:28:49');
INSERT INTO `activity_logs` VALUES (667, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:55:44', '2025-01-13 22:55:44');
INSERT INTO `activity_logs` VALUES (668, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:56:12', '2025-01-13 22:56:12');
INSERT INTO `activity_logs` VALUES (669, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 22:56:19', '2025-01-13 22:56:19');
INSERT INTO `activity_logs` VALUES (670, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:01:58', '2025-01-13 23:01:58');
INSERT INTO `activity_logs` VALUES (671, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:02:35', '2025-01-13 23:02:35');
INSERT INTO `activity_logs` VALUES (672, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:03:12', '2025-01-13 23:03:12');
INSERT INTO `activity_logs` VALUES (673, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:03:20', '2025-01-13 23:03:20');
INSERT INTO `activity_logs` VALUES (674, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:04:15', '2025-01-13 23:04:15');
INSERT INTO `activity_logs` VALUES (675, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:04:22', '2025-01-13 23:04:22');
INSERT INTO `activity_logs` VALUES (676, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:04:46', '2025-01-13 23:04:46');
INSERT INTO `activity_logs` VALUES (677, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:05:22', '2025-01-13 23:05:22');
INSERT INTO `activity_logs` VALUES (678, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:06:09', '2025-01-13 23:06:09');
INSERT INTO `activity_logs` VALUES (679, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:06:21', '2025-01-13 23:06:21');
INSERT INTO `activity_logs` VALUES (680, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:06:37', '2025-01-13 23:06:37');
INSERT INTO `activity_logs` VALUES (681, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:06:55', '2025-01-13 23:06:55');
INSERT INTO `activity_logs` VALUES (682, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:07:01', '2025-01-13 23:07:01');
INSERT INTO `activity_logs` VALUES (683, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:07:16', '2025-01-13 23:07:16');
INSERT INTO `activity_logs` VALUES (684, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:07:22', '2025-01-13 23:07:22');
INSERT INTO `activity_logs` VALUES (685, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:07:33', '2025-01-13 23:07:33');
INSERT INTO `activity_logs` VALUES (686, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:07:38', '2025-01-13 23:07:38');
INSERT INTO `activity_logs` VALUES (687, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:08:03', '2025-01-13 23:08:03');
INSERT INTO `activity_logs` VALUES (688, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:08:12', '2025-01-13 23:08:12');
INSERT INTO `activity_logs` VALUES (689, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:09:24', '2025-01-13 23:09:24');
INSERT INTO `activity_logs` VALUES (690, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:09:41', '2025-01-13 23:09:41');
INSERT INTO `activity_logs` VALUES (691, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:09:49', '2025-01-13 23:09:49');
INSERT INTO `activity_logs` VALUES (692, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:10:17', '2025-01-13 23:10:17');
INSERT INTO `activity_logs` VALUES (693, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:11:24', '2025-01-13 23:11:24');
INSERT INTO `activity_logs` VALUES (694, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:11:36', '2025-01-13 23:11:36');
INSERT INTO `activity_logs` VALUES (695, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:11:48', '2025-01-13 23:11:48');
INSERT INTO `activity_logs` VALUES (696, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:14:50', '2025-01-13 23:14:50');
INSERT INTO `activity_logs` VALUES (697, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:15:16', '2025-01-13 23:15:16');
INSERT INTO `activity_logs` VALUES (698, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:15:32', '2025-01-13 23:15:32');
INSERT INTO `activity_logs` VALUES (699, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:15:51', '2025-01-13 23:15:51');
INSERT INTO `activity_logs` VALUES (700, 'create', '1', 'User Menambah Anak.', '2025-01-13 23:17:01', '2025-01-13 23:17:01');
INSERT INTO `activity_logs` VALUES (701, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:17:02', '2025-01-13 23:17:02');
INSERT INTO `activity_logs` VALUES (702, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:17:13', '2025-01-13 23:17:13');
INSERT INTO `activity_logs` VALUES (703, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:17:32', '2025-01-13 23:17:32');
INSERT INTO `activity_logs` VALUES (704, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:19:26', '2025-01-13 23:19:26');
INSERT INTO `activity_logs` VALUES (705, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:19:37', '2025-01-13 23:19:37');
INSERT INTO `activity_logs` VALUES (706, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:19:49', '2025-01-13 23:19:49');
INSERT INTO `activity_logs` VALUES (707, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:20:35', '2025-01-13 23:20:35');
INSERT INTO `activity_logs` VALUES (708, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:20:45', '2025-01-13 23:20:45');
INSERT INTO `activity_logs` VALUES (709, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:22:00', '2025-01-13 23:22:00');
INSERT INTO `activity_logs` VALUES (710, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:22:04', '2025-01-13 23:22:04');
INSERT INTO `activity_logs` VALUES (711, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-13 23:26:48', '2025-01-13 23:26:48');
INSERT INTO `activity_logs` VALUES (712, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 09:02:15', '2025-01-14 09:02:15');
INSERT INTO `activity_logs` VALUES (713, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:02:24', '2025-01-14 09:02:24');
INSERT INTO `activity_logs` VALUES (714, 'create', '1', 'User Menghapus Anak.', '2025-01-14 09:02:29', '2025-01-14 09:02:29');
INSERT INTO `activity_logs` VALUES (715, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:02:29', '2025-01-14 09:02:29');
INSERT INTO `activity_logs` VALUES (716, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:02:43', '2025-01-14 09:02:43');
INSERT INTO `activity_logs` VALUES (717, 'create', '1', 'User Menambah Anak.', '2025-01-14 09:06:57', '2025-01-14 09:06:57');
INSERT INTO `activity_logs` VALUES (718, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:06:57', '2025-01-14 09:06:57');
INSERT INTO `activity_logs` VALUES (719, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:07:24', '2025-01-14 09:07:24');
INSERT INTO `activity_logs` VALUES (720, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:08:30', '2025-01-14 09:08:30');
INSERT INTO `activity_logs` VALUES (721, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:08:42', '2025-01-14 09:08:42');
INSERT INTO `activity_logs` VALUES (722, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:08:55', '2025-01-14 09:08:55');
INSERT INTO `activity_logs` VALUES (723, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:12:30', '2025-01-14 09:12:30');
INSERT INTO `activity_logs` VALUES (724, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:13:22', '2025-01-14 09:13:22');
INSERT INTO `activity_logs` VALUES (725, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:13:28', '2025-01-14 09:13:28');
INSERT INTO `activity_logs` VALUES (726, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:13:40', '2025-01-14 09:13:40');
INSERT INTO `activity_logs` VALUES (727, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:14:32', '2025-01-14 09:14:32');
INSERT INTO `activity_logs` VALUES (728, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:14:41', '2025-01-14 09:14:41');
INSERT INTO `activity_logs` VALUES (729, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:14:47', '2025-01-14 09:14:47');
INSERT INTO `activity_logs` VALUES (730, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:14:55', '2025-01-14 09:14:55');
INSERT INTO `activity_logs` VALUES (731, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:16:12', '2025-01-14 09:16:12');
INSERT INTO `activity_logs` VALUES (732, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:16:26', '2025-01-14 09:16:26');
INSERT INTO `activity_logs` VALUES (733, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:18:26', '2025-01-14 09:18:26');
INSERT INTO `activity_logs` VALUES (734, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:18:42', '2025-01-14 09:18:42');
INSERT INTO `activity_logs` VALUES (735, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:19:12', '2025-01-14 09:19:12');
INSERT INTO `activity_logs` VALUES (736, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:20:39', '2025-01-14 09:20:39');
INSERT INTO `activity_logs` VALUES (737, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:20:51', '2025-01-14 09:20:51');
INSERT INTO `activity_logs` VALUES (738, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:22:29', '2025-01-14 09:22:29');
INSERT INTO `activity_logs` VALUES (739, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:22:38', '2025-01-14 09:22:38');
INSERT INTO `activity_logs` VALUES (740, 'create', NULL, 'User Masuk Ke Wahana.', '2025-01-14 09:23:50', '2025-01-14 09:23:50');
INSERT INTO `activity_logs` VALUES (741, 'create', NULL, 'User Masuk Ke Wahana.', '2025-01-14 09:24:04', '2025-01-14 09:24:04');
INSERT INTO `activity_logs` VALUES (742, 'create', NULL, 'User Masuk Ke Wahana.', '2025-01-14 09:24:11', '2025-01-14 09:24:11');
INSERT INTO `activity_logs` VALUES (743, 'create', NULL, 'User Masuk Ke Wahana.', '2025-01-14 09:24:28', '2025-01-14 09:24:28');
INSERT INTO `activity_logs` VALUES (744, 'create', NULL, 'User Masuk Ke Wahana.', '2025-01-14 09:24:37', '2025-01-14 09:24:37');
INSERT INTO `activity_logs` VALUES (745, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:25:31', '2025-01-14 09:25:31');
INSERT INTO `activity_logs` VALUES (746, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:25:44', '2025-01-14 09:25:44');
INSERT INTO `activity_logs` VALUES (747, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:30:10', '2025-01-14 09:30:10');
INSERT INTO `activity_logs` VALUES (748, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:30:31', '2025-01-14 09:30:31');
INSERT INTO `activity_logs` VALUES (749, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:31:02', '2025-01-14 09:31:02');
INSERT INTO `activity_logs` VALUES (750, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:31:12', '2025-01-14 09:31:12');
INSERT INTO `activity_logs` VALUES (751, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:34:12', '2025-01-14 09:34:12');
INSERT INTO `activity_logs` VALUES (752, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:34:23', '2025-01-14 09:34:23');
INSERT INTO `activity_logs` VALUES (753, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:34:30', '2025-01-14 09:34:30');
INSERT INTO `activity_logs` VALUES (754, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:36:10', '2025-01-14 09:36:10');
INSERT INTO `activity_logs` VALUES (755, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:36:34', '2025-01-14 09:36:34');
INSERT INTO `activity_logs` VALUES (756, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:37:11', '2025-01-14 09:37:11');
INSERT INTO `activity_logs` VALUES (757, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:37:24', '2025-01-14 09:37:24');
INSERT INTO `activity_logs` VALUES (758, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:37:46', '2025-01-14 09:37:46');
INSERT INTO `activity_logs` VALUES (759, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:37:48', '2025-01-14 09:37:48');
INSERT INTO `activity_logs` VALUES (760, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:38:16', '2025-01-14 09:38:16');
INSERT INTO `activity_logs` VALUES (761, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:38:23', '2025-01-14 09:38:23');
INSERT INTO `activity_logs` VALUES (762, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:38:47', '2025-01-14 09:38:47');
INSERT INTO `activity_logs` VALUES (763, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:38:59', '2025-01-14 09:38:59');
INSERT INTO `activity_logs` VALUES (764, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:39:06', '2025-01-14 09:39:06');
INSERT INTO `activity_logs` VALUES (765, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:39:26', '2025-01-14 09:39:26');
INSERT INTO `activity_logs` VALUES (766, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:39:37', '2025-01-14 09:39:37');
INSERT INTO `activity_logs` VALUES (767, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:39:42', '2025-01-14 09:39:42');
INSERT INTO `activity_logs` VALUES (768, 'create', '1', 'User Menghapus Anak.', '2025-01-14 09:40:23', '2025-01-14 09:40:23');
INSERT INTO `activity_logs` VALUES (769, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:40:24', '2025-01-14 09:40:24');
INSERT INTO `activity_logs` VALUES (770, 'create', '1', 'User Menghapus Anak.', '2025-01-14 09:40:27', '2025-01-14 09:40:27');
INSERT INTO `activity_logs` VALUES (771, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:40:27', '2025-01-14 09:40:27');
INSERT INTO `activity_logs` VALUES (772, 'create', '1', 'User Menambah Anak.', '2025-01-14 09:41:00', '2025-01-14 09:41:00');
INSERT INTO `activity_logs` VALUES (773, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:41:01', '2025-01-14 09:41:01');
INSERT INTO `activity_logs` VALUES (774, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:41:12', '2025-01-14 09:41:12');
INSERT INTO `activity_logs` VALUES (775, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:41:33', '2025-01-14 09:41:33');
INSERT INTO `activity_logs` VALUES (776, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:41:40', '2025-01-14 09:41:40');
INSERT INTO `activity_logs` VALUES (777, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:42:03', '2025-01-14 09:42:03');
INSERT INTO `activity_logs` VALUES (778, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:42:38', '2025-01-14 09:42:38');
INSERT INTO `activity_logs` VALUES (779, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:44:10', '2025-01-14 09:44:10');
INSERT INTO `activity_logs` VALUES (780, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:44:23', '2025-01-14 09:44:23');
INSERT INTO `activity_logs` VALUES (781, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:45:15', '2025-01-14 09:45:15');
INSERT INTO `activity_logs` VALUES (782, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:45:25', '2025-01-14 09:45:25');
INSERT INTO `activity_logs` VALUES (783, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:45:32', '2025-01-14 09:45:32');
INSERT INTO `activity_logs` VALUES (784, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:45:46', '2025-01-14 09:45:46');
INSERT INTO `activity_logs` VALUES (785, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:45:58', '2025-01-14 09:45:58');
INSERT INTO `activity_logs` VALUES (786, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:46:13', '2025-01-14 09:46:13');
INSERT INTO `activity_logs` VALUES (787, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:46:48', '2025-01-14 09:46:48');
INSERT INTO `activity_logs` VALUES (788, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:46:59', '2025-01-14 09:46:59');
INSERT INTO `activity_logs` VALUES (789, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:47:08', '2025-01-14 09:47:08');
INSERT INTO `activity_logs` VALUES (790, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:47:17', '2025-01-14 09:47:17');
INSERT INTO `activity_logs` VALUES (791, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:48:21', '2025-01-14 09:48:21');
INSERT INTO `activity_logs` VALUES (792, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:48:29', '2025-01-14 09:48:29');
INSERT INTO `activity_logs` VALUES (793, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:49:27', '2025-01-14 09:49:27');
INSERT INTO `activity_logs` VALUES (794, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:49:37', '2025-01-14 09:49:37');
INSERT INTO `activity_logs` VALUES (795, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:50:03', '2025-01-14 09:50:03');
INSERT INTO `activity_logs` VALUES (796, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:51:11', '2025-01-14 09:51:11');
INSERT INTO `activity_logs` VALUES (797, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:51:20', '2025-01-14 09:51:20');
INSERT INTO `activity_logs` VALUES (798, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:53:46', '2025-01-14 09:53:46');
INSERT INTO `activity_logs` VALUES (799, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:53:56', '2025-01-14 09:53:56');
INSERT INTO `activity_logs` VALUES (800, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:54:01', '2025-01-14 09:54:01');
INSERT INTO `activity_logs` VALUES (801, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:54:18', '2025-01-14 09:54:18');
INSERT INTO `activity_logs` VALUES (802, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:55:57', '2025-01-14 09:55:57');
INSERT INTO `activity_logs` VALUES (803, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:56:02', '2025-01-14 09:56:02');
INSERT INTO `activity_logs` VALUES (804, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:56:10', '2025-01-14 09:56:10');
INSERT INTO `activity_logs` VALUES (805, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:57:11', '2025-01-14 09:57:11');
INSERT INTO `activity_logs` VALUES (806, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:58:04', '2025-01-14 09:58:04');
INSERT INTO `activity_logs` VALUES (807, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:58:07', '2025-01-14 09:58:07');
INSERT INTO `activity_logs` VALUES (808, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:58:11', '2025-01-14 09:58:11');
INSERT INTO `activity_logs` VALUES (809, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:58:14', '2025-01-14 09:58:14');
INSERT INTO `activity_logs` VALUES (810, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:58:17', '2025-01-14 09:58:17');
INSERT INTO `activity_logs` VALUES (811, 'create', '1', 'User Menambah Wahana.', '2025-01-14 09:58:32', '2025-01-14 09:58:32');
INSERT INTO `activity_logs` VALUES (812, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:58:32', '2025-01-14 09:58:32');
INSERT INTO `activity_logs` VALUES (813, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:58:36', '2025-01-14 09:58:36');
INSERT INTO `activity_logs` VALUES (814, 'create', '1', 'User Menambah Anak.', '2025-01-14 09:58:54', '2025-01-14 09:58:54');
INSERT INTO `activity_logs` VALUES (815, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:58:54', '2025-01-14 09:58:54');
INSERT INTO `activity_logs` VALUES (816, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:59:15', '2025-01-14 09:59:15');
INSERT INTO `activity_logs` VALUES (817, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 09:59:43', '2025-01-14 09:59:43');
INSERT INTO `activity_logs` VALUES (818, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 12:42:16', '2025-01-14 12:42:16');
INSERT INTO `activity_logs` VALUES (819, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 12:42:16', '2025-01-14 12:42:16');
INSERT INTO `activity_logs` VALUES (820, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 12:52:53', '2025-01-14 12:52:53');
INSERT INTO `activity_logs` VALUES (821, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 12:52:56', '2025-01-14 12:52:56');
INSERT INTO `activity_logs` VALUES (822, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 12:53:11', '2025-01-14 12:53:11');
INSERT INTO `activity_logs` VALUES (823, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 12:53:42', '2025-01-14 12:53:42');
INSERT INTO `activity_logs` VALUES (824, 'create', '1', 'User Menghapus Transaksi.', '2025-01-14 12:53:45', '2025-01-14 12:53:45');
INSERT INTO `activity_logs` VALUES (825, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 12:53:45', '2025-01-14 12:53:45');
INSERT INTO `activity_logs` VALUES (826, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 12:56:50', '2025-01-14 12:56:50');
INSERT INTO `activity_logs` VALUES (827, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 12:57:08', '2025-01-14 12:57:08');
INSERT INTO `activity_logs` VALUES (828, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 13:01:53', '2025-01-14 13:01:53');
INSERT INTO `activity_logs` VALUES (829, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 13:02:44', '2025-01-14 13:02:44');
INSERT INTO `activity_logs` VALUES (830, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 13:02:58', '2025-01-14 13:02:58');
INSERT INTO `activity_logs` VALUES (831, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 13:03:08', '2025-01-14 13:03:08');
INSERT INTO `activity_logs` VALUES (832, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:07:57', '2025-01-14 13:07:57');
INSERT INTO `activity_logs` VALUES (833, 'create', '1', 'User Menghapus Wahana.', '2025-01-14 13:08:02', '2025-01-14 13:08:02');
INSERT INTO `activity_logs` VALUES (834, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:08:02', '2025-01-14 13:08:02');
INSERT INTO `activity_logs` VALUES (835, 'create', '1', 'User Menambah Wahana.', '2025-01-14 13:08:31', '2025-01-14 13:08:31');
INSERT INTO `activity_logs` VALUES (836, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:08:31', '2025-01-14 13:08:31');
INSERT INTO `activity_logs` VALUES (837, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:08:35', '2025-01-14 13:08:35');
INSERT INTO `activity_logs` VALUES (838, 'create', '1', 'User Menambah Anak.', '2025-01-14 13:09:03', '2025-01-14 13:09:03');
INSERT INTO `activity_logs` VALUES (839, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:09:03', '2025-01-14 13:09:03');
INSERT INTO `activity_logs` VALUES (840, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:09:14', '2025-01-14 13:09:14');
INSERT INTO `activity_logs` VALUES (841, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:09:33', '2025-01-14 13:09:33');
INSERT INTO `activity_logs` VALUES (842, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:10:07', '2025-01-14 13:10:07');
INSERT INTO `activity_logs` VALUES (843, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-14 13:10:17', '2025-01-14 13:10:17');
INSERT INTO `activity_logs` VALUES (844, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:16:34', '2025-01-14 13:16:34');
INSERT INTO `activity_logs` VALUES (845, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:17:22', '2025-01-14 13:17:22');
INSERT INTO `activity_logs` VALUES (846, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:17:34', '2025-01-14 13:17:34');
INSERT INTO `activity_logs` VALUES (847, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:18:31', '2025-01-14 13:18:31');
INSERT INTO `activity_logs` VALUES (848, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:19:24', '2025-01-14 13:19:24');
INSERT INTO `activity_logs` VALUES (849, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:19:34', '2025-01-14 13:19:34');
INSERT INTO `activity_logs` VALUES (850, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:19:44', '2025-01-14 13:19:44');
INSERT INTO `activity_logs` VALUES (851, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:19:48', '2025-01-14 13:19:48');
INSERT INTO `activity_logs` VALUES (852, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:20:30', '2025-01-14 13:20:30');
INSERT INTO `activity_logs` VALUES (853, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:20:39', '2025-01-14 13:20:39');
INSERT INTO `activity_logs` VALUES (854, 'create', '1', 'User Menambah Anak.', '2025-01-14 13:20:54', '2025-01-14 13:20:54');
INSERT INTO `activity_logs` VALUES (855, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:20:55', '2025-01-14 13:20:55');
INSERT INTO `activity_logs` VALUES (856, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:20:57', '2025-01-14 13:20:57');
INSERT INTO `activity_logs` VALUES (857, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:21:01', '2025-01-14 13:21:01');
INSERT INTO `activity_logs` VALUES (858, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:21:08', '2025-01-14 13:21:08');
INSERT INTO `activity_logs` VALUES (859, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-14 13:21:14', '2025-01-14 13:21:14');
INSERT INTO `activity_logs` VALUES (860, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:21:31', '2025-01-14 13:21:31');
INSERT INTO `activity_logs` VALUES (861, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:21:37', '2025-01-14 13:21:37');
INSERT INTO `activity_logs` VALUES (862, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:25:31', '2025-01-14 13:25:31');
INSERT INTO `activity_logs` VALUES (863, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:25:36', '2025-01-14 13:25:36');
INSERT INTO `activity_logs` VALUES (864, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:25:53', '2025-01-14 13:25:53');
INSERT INTO `activity_logs` VALUES (865, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:35:48', '2025-01-14 13:35:48');
INSERT INTO `activity_logs` VALUES (866, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:38:48', '2025-01-14 13:38:48');
INSERT INTO `activity_logs` VALUES (867, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:39:14', '2025-01-14 13:39:14');
INSERT INTO `activity_logs` VALUES (868, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:41:34', '2025-01-14 13:41:34');
INSERT INTO `activity_logs` VALUES (869, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:42:29', '2025-01-14 13:42:29');
INSERT INTO `activity_logs` VALUES (870, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:42:46', '2025-01-14 13:42:46');
INSERT INTO `activity_logs` VALUES (871, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:43:08', '2025-01-14 13:43:08');
INSERT INTO `activity_logs` VALUES (872, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:43:13', '2025-01-14 13:43:13');
INSERT INTO `activity_logs` VALUES (873, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:43:53', '2025-01-14 13:43:53');
INSERT INTO `activity_logs` VALUES (874, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:44:15', '2025-01-14 13:44:15');
INSERT INTO `activity_logs` VALUES (875, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:44:26', '2025-01-14 13:44:26');
INSERT INTO `activity_logs` VALUES (876, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:44:41', '2025-01-14 13:44:41');
INSERT INTO `activity_logs` VALUES (877, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:44:48', '2025-01-14 13:44:48');
INSERT INTO `activity_logs` VALUES (878, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:47:45', '2025-01-14 13:47:45');
INSERT INTO `activity_logs` VALUES (879, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:49:36', '2025-01-14 13:49:36');
INSERT INTO `activity_logs` VALUES (880, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:49:55', '2025-01-14 13:49:55');
INSERT INTO `activity_logs` VALUES (881, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:50:13', '2025-01-14 13:50:13');
INSERT INTO `activity_logs` VALUES (882, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:50:19', '2025-01-14 13:50:19');
INSERT INTO `activity_logs` VALUES (883, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:50:43', '2025-01-14 13:50:43');
INSERT INTO `activity_logs` VALUES (884, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:51:06', '2025-01-14 13:51:06');
INSERT INTO `activity_logs` VALUES (885, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:51:59', '2025-01-14 13:51:59');
INSERT INTO `activity_logs` VALUES (886, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:52:08', '2025-01-14 13:52:08');
INSERT INTO `activity_logs` VALUES (887, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:52:43', '2025-01-14 13:52:43');
INSERT INTO `activity_logs` VALUES (888, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:53:20', '2025-01-14 13:53:20');
INSERT INTO `activity_logs` VALUES (889, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:53:50', '2025-01-14 13:53:50');
INSERT INTO `activity_logs` VALUES (890, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-14 13:53:56', '2025-01-14 13:53:56');
INSERT INTO `activity_logs` VALUES (891, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-15 09:03:26', '2025-01-15 09:03:26');
INSERT INTO `activity_logs` VALUES (892, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:03:29', '2025-01-15 09:03:29');
INSERT INTO `activity_logs` VALUES (893, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:03:46', '2025-01-15 09:03:46');
INSERT INTO `activity_logs` VALUES (894, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-15 09:03:51', '2025-01-15 09:03:51');
INSERT INTO `activity_logs` VALUES (895, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:03:53', '2025-01-15 09:03:53');
INSERT INTO `activity_logs` VALUES (896, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:04:18', '2025-01-15 09:04:18');
INSERT INTO `activity_logs` VALUES (897, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-15 09:04:21', '2025-01-15 09:04:21');
INSERT INTO `activity_logs` VALUES (898, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:04:23', '2025-01-15 09:04:23');
INSERT INTO `activity_logs` VALUES (899, 'create', '1', 'User Menambah Wahana.', '2025-01-15 09:04:37', '2025-01-15 09:04:37');
INSERT INTO `activity_logs` VALUES (900, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:04:37', '2025-01-15 09:04:37');
INSERT INTO `activity_logs` VALUES (901, 'create', '1', 'User Masuk Ke Edit Wahana.', '2025-01-15 09:04:39', '2025-01-15 09:04:39');
INSERT INTO `activity_logs` VALUES (902, 'create', '1', 'User Mengupdate Wahana.', '2025-01-15 09:04:43', '2025-01-15 09:04:43');
INSERT INTO `activity_logs` VALUES (903, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:04:43', '2025-01-15 09:04:43');
INSERT INTO `activity_logs` VALUES (904, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:04:48', '2025-01-15 09:04:48');
INSERT INTO `activity_logs` VALUES (905, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:04:53', '2025-01-15 09:04:53');
INSERT INTO `activity_logs` VALUES (906, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:04:53', '2025-01-15 09:04:53');
INSERT INTO `activity_logs` VALUES (907, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:04:58', '2025-01-15 09:04:58');
INSERT INTO `activity_logs` VALUES (908, 'create', '1', 'User Masuk Ke Edit Wahana.', '2025-01-15 09:04:59', '2025-01-15 09:04:59');
INSERT INTO `activity_logs` VALUES (909, 'create', '1', 'User Mengupdate Wahana.', '2025-01-15 09:05:24', '2025-01-15 09:05:24');
INSERT INTO `activity_logs` VALUES (910, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:05:24', '2025-01-15 09:05:24');
INSERT INTO `activity_logs` VALUES (911, 'create', '1', 'User Menambah Wahana.', '2025-01-15 09:05:53', '2025-01-15 09:05:53');
INSERT INTO `activity_logs` VALUES (912, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:05:54', '2025-01-15 09:05:54');
INSERT INTO `activity_logs` VALUES (913, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:05:55', '2025-01-15 09:05:55');
INSERT INTO `activity_logs` VALUES (914, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:06:43', '2025-01-15 09:06:43');
INSERT INTO `activity_logs` VALUES (915, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:06:43', '2025-01-15 09:06:43');
INSERT INTO `activity_logs` VALUES (916, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:06:52', '2025-01-15 09:06:52');
INSERT INTO `activity_logs` VALUES (917, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:07:12', '2025-01-15 09:07:12');
INSERT INTO `activity_logs` VALUES (918, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:07:22', '2025-01-15 09:07:22');
INSERT INTO `activity_logs` VALUES (919, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:07:59', '2025-01-15 09:07:59');
INSERT INTO `activity_logs` VALUES (920, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:08:09', '2025-01-15 09:08:09');
INSERT INTO `activity_logs` VALUES (921, 'update', '1', 'Menambah waktu bermain 1 jam untuk Play ID 12', '2025-01-15 09:08:16', '2025-01-15 09:08:16');
INSERT INTO `activity_logs` VALUES (922, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:08:17', '2025-01-15 09:08:17');
INSERT INTO `activity_logs` VALUES (923, 'create', '1', 'User Masuk Ke Restore Delete.', '2025-01-15 09:08:20', '2025-01-15 09:08:20');
INSERT INTO `activity_logs` VALUES (924, 'create', '1', 'User Masuk Ke Transaksi.', '2025-01-15 09:08:22', '2025-01-15 09:08:22');
INSERT INTO `activity_logs` VALUES (925, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:08:35', '2025-01-15 09:08:35');
INSERT INTO `activity_logs` VALUES (926, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:09:40', '2025-01-15 09:09:40');
INSERT INTO `activity_logs` VALUES (927, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:09:43', '2025-01-15 09:09:43');
INSERT INTO `activity_logs` VALUES (928, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:09:46', '2025-01-15 09:09:46');
INSERT INTO `activity_logs` VALUES (929, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:09:50', '2025-01-15 09:09:50');
INSERT INTO `activity_logs` VALUES (930, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:09:58', '2025-01-15 09:09:58');
INSERT INTO `activity_logs` VALUES (931, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:09:59', '2025-01-15 09:09:59');
INSERT INTO `activity_logs` VALUES (932, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:10:04', '2025-01-15 09:10:04');
INSERT INTO `activity_logs` VALUES (933, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:10:05', '2025-01-15 09:10:05');
INSERT INTO `activity_logs` VALUES (934, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:16:26', '2025-01-15 09:16:26');
INSERT INTO `activity_logs` VALUES (935, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:16:47', '2025-01-15 09:16:47');
INSERT INTO `activity_logs` VALUES (936, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:16:48', '2025-01-15 09:16:48');
INSERT INTO `activity_logs` VALUES (937, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:17:56', '2025-01-15 09:17:56');
INSERT INTO `activity_logs` VALUES (938, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:18:02', '2025-01-15 09:18:02');
INSERT INTO `activity_logs` VALUES (939, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:18:35', '2025-01-15 09:18:35');
INSERT INTO `activity_logs` VALUES (940, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:18:52', '2025-01-15 09:18:52');
INSERT INTO `activity_logs` VALUES (941, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:18:59', '2025-01-15 09:18:59');
INSERT INTO `activity_logs` VALUES (942, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:19:02', '2025-01-15 09:19:02');
INSERT INTO `activity_logs` VALUES (943, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:19:12', '2025-01-15 09:19:12');
INSERT INTO `activity_logs` VALUES (944, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:19:26', '2025-01-15 09:19:26');
INSERT INTO `activity_logs` VALUES (945, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:19:28', '2025-01-15 09:19:28');
INSERT INTO `activity_logs` VALUES (946, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:19:35', '2025-01-15 09:19:35');
INSERT INTO `activity_logs` VALUES (947, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:19:55', '2025-01-15 09:19:55');
INSERT INTO `activity_logs` VALUES (948, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:19:56', '2025-01-15 09:19:56');
INSERT INTO `activity_logs` VALUES (949, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:20:14', '2025-01-15 09:20:14');
INSERT INTO `activity_logs` VALUES (950, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:20:15', '2025-01-15 09:20:15');
INSERT INTO `activity_logs` VALUES (951, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:20:41', '2025-01-15 09:20:41');
INSERT INTO `activity_logs` VALUES (952, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:20:43', '2025-01-15 09:20:43');
INSERT INTO `activity_logs` VALUES (953, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:20:49', '2025-01-15 09:20:49');
INSERT INTO `activity_logs` VALUES (954, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:21:14', '2025-01-15 09:21:14');
INSERT INTO `activity_logs` VALUES (955, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:22:11', '2025-01-15 09:22:11');
INSERT INTO `activity_logs` VALUES (956, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:22:12', '2025-01-15 09:22:12');
INSERT INTO `activity_logs` VALUES (957, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:22:14', '2025-01-15 09:22:14');
INSERT INTO `activity_logs` VALUES (958, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:22:15', '2025-01-15 09:22:15');
INSERT INTO `activity_logs` VALUES (959, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:22:24', '2025-01-15 09:22:24');
INSERT INTO `activity_logs` VALUES (960, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:22:25', '2025-01-15 09:22:25');
INSERT INTO `activity_logs` VALUES (961, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:22:28', '2025-01-15 09:22:28');
INSERT INTO `activity_logs` VALUES (962, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:22:48', '2025-01-15 09:22:48');
INSERT INTO `activity_logs` VALUES (963, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:22:50', '2025-01-15 09:22:50');
INSERT INTO `activity_logs` VALUES (964, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:23:02', '2025-01-15 09:23:02');
INSERT INTO `activity_logs` VALUES (965, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:23:13', '2025-01-15 09:23:13');
INSERT INTO `activity_logs` VALUES (966, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:23:14', '2025-01-15 09:23:14');
INSERT INTO `activity_logs` VALUES (967, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:24:27', '2025-01-15 09:24:27');
INSERT INTO `activity_logs` VALUES (968, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:24:28', '2025-01-15 09:24:28');
INSERT INTO `activity_logs` VALUES (969, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:25:39', '2025-01-15 09:25:39');
INSERT INTO `activity_logs` VALUES (970, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:26:41', '2025-01-15 09:26:41');
INSERT INTO `activity_logs` VALUES (971, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:26:50', '2025-01-15 09:26:50');
INSERT INTO `activity_logs` VALUES (972, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:27:00', '2025-01-15 09:27:00');
INSERT INTO `activity_logs` VALUES (973, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:27:11', '2025-01-15 09:27:11');
INSERT INTO `activity_logs` VALUES (974, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:27:18', '2025-01-15 09:27:18');
INSERT INTO `activity_logs` VALUES (975, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:27:30', '2025-01-15 09:27:30');
INSERT INTO `activity_logs` VALUES (976, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:27:33', '2025-01-15 09:27:33');
INSERT INTO `activity_logs` VALUES (977, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:27:37', '2025-01-15 09:27:37');
INSERT INTO `activity_logs` VALUES (978, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:27:42', '2025-01-15 09:27:42');
INSERT INTO `activity_logs` VALUES (979, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:27:48', '2025-01-15 09:27:48');
INSERT INTO `activity_logs` VALUES (980, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:27:53', '2025-01-15 09:27:53');
INSERT INTO `activity_logs` VALUES (981, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:28:05', '2025-01-15 09:28:05');
INSERT INTO `activity_logs` VALUES (982, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:28:14', '2025-01-15 09:28:14');
INSERT INTO `activity_logs` VALUES (983, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:29:27', '2025-01-15 09:29:27');
INSERT INTO `activity_logs` VALUES (984, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:29:28', '2025-01-15 09:29:28');
INSERT INTO `activity_logs` VALUES (985, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:29:41', '2025-01-15 09:29:41');
INSERT INTO `activity_logs` VALUES (986, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:29:47', '2025-01-15 09:29:47');
INSERT INTO `activity_logs` VALUES (987, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:29:55', '2025-01-15 09:29:55');
INSERT INTO `activity_logs` VALUES (988, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:29:59', '2025-01-15 09:29:59');
INSERT INTO `activity_logs` VALUES (989, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:30:54', '2025-01-15 09:30:54');
INSERT INTO `activity_logs` VALUES (990, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:31:58', '2025-01-15 09:31:58');
INSERT INTO `activity_logs` VALUES (991, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:33:04', '2025-01-15 09:33:04');
INSERT INTO `activity_logs` VALUES (992, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:33:16', '2025-01-15 09:33:16');
INSERT INTO `activity_logs` VALUES (993, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:35:22', '2025-01-15 09:35:22');
INSERT INTO `activity_logs` VALUES (994, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:35:30', '2025-01-15 09:35:30');
INSERT INTO `activity_logs` VALUES (995, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:35:38', '2025-01-15 09:35:38');
INSERT INTO `activity_logs` VALUES (996, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:35:55', '2025-01-15 09:35:55');
INSERT INTO `activity_logs` VALUES (997, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:36:34', '2025-01-15 09:36:34');
INSERT INTO `activity_logs` VALUES (998, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:36:57', '2025-01-15 09:36:57');
INSERT INTO `activity_logs` VALUES (999, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:38:11', '2025-01-15 09:38:11');
INSERT INTO `activity_logs` VALUES (1000, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:38:40', '2025-01-15 09:38:40');
INSERT INTO `activity_logs` VALUES (1001, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:38:46', '2025-01-15 09:38:46');
INSERT INTO `activity_logs` VALUES (1002, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:38:52', '2025-01-15 09:38:52');
INSERT INTO `activity_logs` VALUES (1003, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:39:10', '2025-01-15 09:39:10');
INSERT INTO `activity_logs` VALUES (1004, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:39:38', '2025-01-15 09:39:38');
INSERT INTO `activity_logs` VALUES (1005, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:39:51', '2025-01-15 09:39:51');
INSERT INTO `activity_logs` VALUES (1006, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:39:58', '2025-01-15 09:39:58');
INSERT INTO `activity_logs` VALUES (1007, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:02', '2025-01-15 09:40:02');
INSERT INTO `activity_logs` VALUES (1008, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:09', '2025-01-15 09:40:09');
INSERT INTO `activity_logs` VALUES (1009, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:16', '2025-01-15 09:40:16');
INSERT INTO `activity_logs` VALUES (1010, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:19', '2025-01-15 09:40:19');
INSERT INTO `activity_logs` VALUES (1011, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:28', '2025-01-15 09:40:28');
INSERT INTO `activity_logs` VALUES (1012, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:38', '2025-01-15 09:40:38');
INSERT INTO `activity_logs` VALUES (1013, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:41', '2025-01-15 09:40:41');
INSERT INTO `activity_logs` VALUES (1014, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:47', '2025-01-15 09:40:47');
INSERT INTO `activity_logs` VALUES (1015, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:54', '2025-01-15 09:40:54');
INSERT INTO `activity_logs` VALUES (1016, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:40:57', '2025-01-15 09:40:57');
INSERT INTO `activity_logs` VALUES (1017, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:41:03', '2025-01-15 09:41:03');
INSERT INTO `activity_logs` VALUES (1018, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:41:06', '2025-01-15 09:41:06');
INSERT INTO `activity_logs` VALUES (1019, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:41:11', '2025-01-15 09:41:11');
INSERT INTO `activity_logs` VALUES (1020, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:41:18', '2025-01-15 09:41:18');
INSERT INTO `activity_logs` VALUES (1021, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:41:29', '2025-01-15 09:41:29');
INSERT INTO `activity_logs` VALUES (1022, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:41:38', '2025-01-15 09:41:38');
INSERT INTO `activity_logs` VALUES (1023, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:41:55', '2025-01-15 09:41:55');
INSERT INTO `activity_logs` VALUES (1024, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:41:56', '2025-01-15 09:41:56');
INSERT INTO `activity_logs` VALUES (1025, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:41:58', '2025-01-15 09:41:58');
INSERT INTO `activity_logs` VALUES (1026, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:42:18', '2025-01-15 09:42:18');
INSERT INTO `activity_logs` VALUES (1027, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:42:18', '2025-01-15 09:42:18');
INSERT INTO `activity_logs` VALUES (1028, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:42:20', '2025-01-15 09:42:20');
INSERT INTO `activity_logs` VALUES (1029, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:42:22', '2025-01-15 09:42:22');
INSERT INTO `activity_logs` VALUES (1030, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:42:34', '2025-01-15 09:42:34');
INSERT INTO `activity_logs` VALUES (1031, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:42:34', '2025-01-15 09:42:34');
INSERT INTO `activity_logs` VALUES (1032, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:42:36', '2025-01-15 09:42:36');
INSERT INTO `activity_logs` VALUES (1033, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:42:37', '2025-01-15 09:42:37');
INSERT INTO `activity_logs` VALUES (1034, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:42:42', '2025-01-15 09:42:42');
INSERT INTO `activity_logs` VALUES (1035, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:42:54', '2025-01-15 09:42:54');
INSERT INTO `activity_logs` VALUES (1036, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:43:05', '2025-01-15 09:43:05');
INSERT INTO `activity_logs` VALUES (1037, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:05', '2025-01-15 09:43:05');
INSERT INTO `activity_logs` VALUES (1038, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:08', '2025-01-15 09:43:08');
INSERT INTO `activity_logs` VALUES (1039, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:43:09', '2025-01-15 09:43:09');
INSERT INTO `activity_logs` VALUES (1040, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:09', '2025-01-15 09:43:09');
INSERT INTO `activity_logs` VALUES (1041, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:43:15', '2025-01-15 09:43:15');
INSERT INTO `activity_logs` VALUES (1042, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:15', '2025-01-15 09:43:15');
INSERT INTO `activity_logs` VALUES (1043, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:43:15', '2025-01-15 09:43:15');
INSERT INTO `activity_logs` VALUES (1044, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:15', '2025-01-15 09:43:15');
INSERT INTO `activity_logs` VALUES (1045, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:18', '2025-01-15 09:43:18');
INSERT INTO `activity_logs` VALUES (1046, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:43:19', '2025-01-15 09:43:19');
INSERT INTO `activity_logs` VALUES (1047, 'create', '1', 'User Menambah Anak.', '2025-01-15 09:43:30', '2025-01-15 09:43:30');
INSERT INTO `activity_logs` VALUES (1048, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:30', '2025-01-15 09:43:30');
INSERT INTO `activity_logs` VALUES (1049, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:36', '2025-01-15 09:43:36');
INSERT INTO `activity_logs` VALUES (1050, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:38', '2025-01-15 09:43:38');
INSERT INTO `activity_logs` VALUES (1051, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:43:38', '2025-01-15 09:43:38');
INSERT INTO `activity_logs` VALUES (1052, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:43:53', '2025-01-15 09:43:53');
INSERT INTO `activity_logs` VALUES (1053, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:43:56', '2025-01-15 09:43:56');
INSERT INTO `activity_logs` VALUES (1054, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:44:03', '2025-01-15 09:44:03');
INSERT INTO `activity_logs` VALUES (1055, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:44:25', '2025-01-15 09:44:25');
INSERT INTO `activity_logs` VALUES (1056, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:44:54', '2025-01-15 09:44:54');
INSERT INTO `activity_logs` VALUES (1057, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:44:57', '2025-01-15 09:44:57');
INSERT INTO `activity_logs` VALUES (1058, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:45:15', '2025-01-15 09:45:15');
INSERT INTO `activity_logs` VALUES (1059, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:45:18', '2025-01-15 09:45:18');
INSERT INTO `activity_logs` VALUES (1060, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:45:24', '2025-01-15 09:45:24');
INSERT INTO `activity_logs` VALUES (1061, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:45:28', '2025-01-15 09:45:28');
INSERT INTO `activity_logs` VALUES (1062, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:46:52', '2025-01-15 09:46:52');
INSERT INTO `activity_logs` VALUES (1063, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:51:13', '2025-01-15 09:51:13');
INSERT INTO `activity_logs` VALUES (1064, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:51:33', '2025-01-15 09:51:33');
INSERT INTO `activity_logs` VALUES (1065, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:51:36', '2025-01-15 09:51:36');
INSERT INTO `activity_logs` VALUES (1066, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:55:47', '2025-01-15 09:55:47');
INSERT INTO `activity_logs` VALUES (1067, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:57:51', '2025-01-15 09:57:51');
INSERT INTO `activity_logs` VALUES (1068, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:57:59', '2025-01-15 09:57:59');
INSERT INTO `activity_logs` VALUES (1069, 'create', '1', 'User  Masuk Ke Dashboard.', '2025-01-15 09:58:05', '2025-01-15 09:58:05');
INSERT INTO `activity_logs` VALUES (1070, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 09:58:21', '2025-01-15 09:58:21');
INSERT INTO `activity_logs` VALUES (1071, 'create', '1', 'User Masuk Ke Wahana.', '2025-01-15 10:02:40', '2025-01-15 10:02:40');

-- ----------------------------
-- Table structure for buku
-- ----------------------------
DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku`  (
  `id_buku` int NOT NULL AUTO_INCREMENT,
  `id_kategori` int NULL DEFAULT NULL,
  `kode_buku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_buku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pengarang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `penerbit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tahun_terbit` date NULL DEFAULT NULL,
  `file_buku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_upload` date NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_buku`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buku
-- ----------------------------

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_terakhir_upload` date NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_access` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_user_level_menu_unique`(`user_level` ASC, `menu` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (76, 'Admin', 'setting', 1, '2024-11-10 14:58:14', '2025-01-15 09:03:18');
INSERT INTO `permissions` VALUES (112, 'Admin', 'Dashboard', 1, '2025-01-15 09:03:06', '2025-01-15 09:03:18');
INSERT INTO `permissions` VALUES (113, 'Admin', 'Play', 1, '2025-01-15 09:03:06', '2025-01-15 09:03:18');
INSERT INTO `permissions` VALUES (114, 'Petugas', 'Dashboard', 1, '2025-01-15 09:03:24', '2025-01-15 09:03:24');
INSERT INTO `permissions` VALUES (115, 'Petugas', 'Setting', 0, '2025-01-15 09:03:24', '2025-01-15 09:03:24');
INSERT INTO `permissions` VALUES (116, 'Petugas', 'Play', 1, '2025-01-15 09:03:24', '2025-01-15 09:03:24');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'Plegron', '1736777633.png', '2024-10-24 20:53:50', '2025-01-13 21:13:53');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_kelas` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Admin', 'c4ca4238a0b923820dcc509a6f75849b', 'Admin', NULL, '2024-11-10 04:56:38', '2024-11-10 04:56:38', NULL);
INSERT INTO `user` VALUES (2, 'Admin', 'c4ca4238a0b923820dcc509a6f75849b', 'Petugas', NULL, '2024-11-10 04:56:38', '2024-11-10 04:56:38', NULL);

-- ----------------------------
-- Table structure for user_history
-- ----------------------------
DROP TABLE IF EXISTS `user_history`;
CREATE TABLE `user_history`  (
  `id_user_history` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_kelas` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_user_history`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_history
-- ----------------------------
INSERT INTO `user_history` VALUES (9, 3, 'tes', NULL, 'Kesiswaan', NULL, '2024-11-11 15:02:51', '2024-11-11 15:27:05');
INSERT INTO `user_history` VALUES (10, 3, 'tes', NULL, 'Admin', NULL, '2024-11-11 15:02:51', '2024-11-11 15:27:10');
INSERT INTO `user_history` VALUES (13, 6, 'tes', NULL, 'Guru', NULL, '2025-01-09 14:16:26', '2025-01-09 14:16:26');

SET FOREIGN_KEY_CHECKS = 1;
