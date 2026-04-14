-- RU quality profiles

INSERT INTO quality_profiles (
    name,
    description,
    upgrades_allowed,
    minimum_custom_format_score,
    upgrade_until_score,
    upgrade_score_increment
) VALUES
(
    'RU - 2160p SDR',
    '4K SDR profile for Russian trackers. Prefer SDR, HEVC and WEB-DL/WEBRip while rejecting HDR, disc structures, REMUX and common junk.',
    1,
    0,
    7000,
    1
),
(
    'RU - 1080p SDR',
    '1080p SDR profile for Russian trackers. Prefer HEVC and WEB-DL/WEBRip/BDRip while rejecting HDR, disc structures, REMUX and common junk.',
    1,
    0,
    2500,
    1
);

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES
('RU - 2160p SDR', 'ru'),
('RU - 2160p SDR', 'sdr'),
('RU - 1080p SDR', 'ru'),
('RU - 1080p SDR', 'sdr');

INSERT INTO quality_profile_qualities (
    quality_profile_name,
    quality_name,
    quality_group_name,
    position,
    enabled,
    upgrade_until
) VALUES
('RU - 2160p SDR', 'WEBDL-2160p', NULL, 1, 1, 1),
('RU - 2160p SDR', 'Bluray-2160p', NULL, 2, 1, 0),
('RU - 2160p SDR', 'WEBRip-2160p', NULL, 3, 1, 0),
('RU - 2160p SDR', 'Remux-2160p', NULL, 4, 0, 0),
('RU - 2160p SDR', 'HDTV-2160p', NULL, 5, 0, 0),

('RU - 1080p SDR', 'WEBDL-1080p', NULL, 1, 1, 1),
('RU - 1080p SDR', 'Bluray-1080p', NULL, 2, 1, 0),
('RU - 1080p SDR', 'WEBRip-1080p', NULL, 3, 1, 0),
('RU - 1080p SDR', 'Remux-1080p', NULL, 4, 0, 0),
('RU - 1080p SDR', 'HDTV-1080p', NULL, 5, 0, 0);

INSERT INTO quality_profile_custom_formats (
    quality_profile_name,
    custom_format_name,
    arr_type,
    score
) VALUES
('RU - 2160p SDR', 'RU SDR', 'all', 5000),
('RU - 2160p SDR', 'RU HEVC', 'all', 2500),
('RU - 2160p SDR', 'RU WEB-DL', 'all', 1200),
('RU - 2160p SDR', 'RU WEBRip', 'all', 700),
('RU - 2160p SDR', 'RU 10bit', 'all', 400),
('RU - 2160p SDR', 'RU Reject HDR/DV/HLG', 'all', -10000),
('RU - 2160p SDR', 'RU Reject BR-DISK', 'all', -10000),
('RU - 2160p SDR', 'RU Reject AV1', 'all', -10000),
('RU - 2160p SDR', 'RU Reject LQ', 'all', -10000),
('RU - 2160p SDR', 'RU Reject Upscale', 'all', -5000),
('RU - 2160p SDR', 'RU Reject AI', 'all', -3000),
('RU - 2160p SDR', 'RU Reject REMUX', 'all', -5000),

('RU - 1080p SDR', 'RU HEVC', 'all', 1000),
('RU - 1080p SDR', 'RU WEB-DL', 'all', 800),
('RU - 1080p SDR', 'RU WEBRip', 'all', 600),
('RU - 1080p SDR', 'RU BDRip/BluRay', 'all', 500),
('RU - 1080p SDR', 'RU Reject HDR/DV/HLG', 'all', -10000),
('RU - 1080p SDR', 'RU Reject BR-DISK', 'all', -10000),
('RU - 1080p SDR', 'RU Reject AV1', 'all', -10000),
('RU - 1080p SDR', 'RU Reject LQ', 'all', -10000),
('RU - 1080p SDR', 'RU Reject Upscale', 'all', -5000),
('RU - 1080p SDR', 'RU Reject AI', 'all', -3000),
('RU - 1080p SDR', 'RU Reject REMUX', 'all', -3000);
