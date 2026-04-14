-- RU custom formats

INSERT INTO custom_formats (name, description, include_in_rename) VALUES
('RU SDR', 'Marks releases with explicit SDR in title.', 0),
('RU HEVC', 'Matches HEVC / x265 / H.265 releases.', 0),
('RU WEB-DL', 'Matches WEB-DL releases.', 0),
('RU WEBRip', 'Matches WEBRip releases.', 0),
('RU BDRip/BluRay', 'Matches BDRip or BluRay releases.', 0),
('RU 10bit', 'Matches 10-bit releases.', 0),
('RU Reject HDR/DV/HLG', 'Rejects HDR, HDR10, HDR10+, Dolby Vision, DV and HLG.', 0),
('RU Reject BR-DISK', 'Rejects BDMV, ISO, full BluRay and complete disc releases.', 0),
('RU Reject AV1', 'Rejects AV1 releases.', 0),
('RU Reject LQ', 'Rejects low quality releases marked as LQ.', 0),
('RU Reject Upscale', 'Rejects releases marked as upscale or upscaled.', 0),
('RU Reject AI', 'Rejects AI-upscaled or AI-enhanced releases.', 0),
('RU Reject REMUX', 'Rejects REMUX releases.', 0);

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES
('RU SDR', 'ru'),
('RU SDR', 'sdr'),

('RU HEVC', 'ru'),
('RU HEVC', 'codec'),

('RU WEB-DL', 'ru'),
('RU WEB-DL', 'source'),

('RU WEBRip', 'ru'),
('RU WEBRip', 'source'),

('RU BDRip/BluRay', 'ru'),
('RU BDRip/BluRay', 'source'),

('RU 10bit', 'ru'),
('RU 10bit', 'bitdepth'),

('RU Reject HDR/DV/HLG', 'ru'),
('RU Reject HDR/DV/HLG', 'reject'),
('RU Reject HDR/DV/HLG', 'hdr'),

('RU Reject BR-DISK', 'ru'),
('RU Reject BR-DISK', 'reject'),
('RU Reject BR-DISK', 'disc'),

('RU Reject AV1', 'ru'),
('RU Reject AV1', 'reject'),
('RU Reject AV1', 'av1'),

('RU Reject LQ', 'ru'),
('RU Reject LQ', 'reject'),
('RU Reject LQ', 'lq'),

('RU Reject Upscale', 'ru'),
('RU Reject Upscale', 'reject'),
('RU Reject Upscale', 'upscale'),

('RU Reject AI', 'ru'),
('RU Reject AI', 'reject'),
('RU Reject AI', 'ai'),

('RU Reject REMUX', 'ru'),
('RU Reject REMUX', 'reject'),
('RU Reject REMUX', 'remux');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES
('RU SDR', 'Has RU SDR', 'release_title', 'all', 0, 1),
('RU HEVC', 'Has RU HEVC', 'release_title', 'all', 0, 1),
('RU WEB-DL', 'Has RU WEB-DL', 'release_title', 'all', 0, 1),
('RU WEBRip', 'Has RU WEBRip', 'release_title', 'all', 0, 1),
('RU BDRip/BluRay', 'Has RU BDRip', 'release_title', 'all', 0, 0),
('RU BDRip/BluRay', 'Has RU BluRay', 'release_title', 'all', 0, 0),
('RU 10bit', 'Has RU 10bit', 'release_title', 'all', 0, 1),
('RU Reject HDR/DV/HLG', 'Has RU HDR DV HLG', 'release_title', 'all', 0, 1),
('RU Reject BR-DISK', 'Has RU BR-DISK', 'release_title', 'all', 0, 1),
('RU Reject AV1', 'Has RU AV1', 'release_title', 'all', 0, 1),
('RU Reject LQ', 'Has RU LQ', 'release_title', 'all', 0, 1),
('RU Reject Upscale', 'Has RU Upscale', 'release_title', 'all', 0, 1),
('RU Reject AI', 'Has RU AI Upscale', 'release_title', 'all', 0, 1),
('RU Reject REMUX', 'Has RU REMUX', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES
('RU SDR', 'Has RU SDR', 'RU SDR'),
('RU HEVC', 'Has RU HEVC', 'RU HEVC'),
('RU WEB-DL', 'Has RU WEB-DL', 'RU WEB-DL'),
('RU WEBRip', 'Has RU WEBRip', 'RU WEBRip'),
('RU BDRip/BluRay', 'Has RU BDRip', 'RU BDRip'),
('RU BDRip/BluRay', 'Has RU BluRay', 'RU BluRay'),
('RU 10bit', 'Has RU 10bit', 'RU 10bit'),
('RU Reject HDR/DV/HLG', 'Has RU HDR DV HLG', 'RU HDR DV HLG'),
('RU Reject BR-DISK', 'Has RU BR-DISK', 'RU BR-DISK'),
('RU Reject AV1', 'Has RU AV1', 'RU AV1'),
('RU Reject LQ', 'Has RU LQ', 'RU LQ'),
('RU Reject Upscale', 'Has RU Upscale', 'RU Upscale'),
('RU Reject AI', 'Has RU AI Upscale', 'RU AI Upscale'),
('RU Reject REMUX', 'Has RU REMUX', 'RU REMUX');

INSERT INTO custom_format_tests (custom_format_name, title, type, should_match, description) VALUES
('RU SDR', 'Ghost in the Shell (1995) BDRip [H.265/2160p] [4K, SDR, 10-bit]', 'movie', 1, 'Explicit SDR marker'),
('RU SDR', 'Ghost in the Shell (1995) BDRip-HEVC 2160p HDR', 'movie', 0, 'HDR should not match SDR'),

('RU HEVC', 'Movie 2024 WEB-DL 2160p HEVC SDR', 'movie', 1, 'HEVC title'),
('RU HEVC', 'Movie 2024 WEB-DL 1080p x264', 'movie', 0, 'x264 should not match HEVC'),

('RU WEB-DL', 'Movie 2024 WEB-DL 2160p SDR', 'movie', 1, 'WEB-DL title'),
('RU WEB-DL', 'Movie 2024 WEBRip 1080p', 'movie', 0, 'WEBRip should not match WEB-DL'),

('RU WEBRip', 'Movie 2024 WEBRip 1080p', 'movie', 1, 'WEBRip title'),
('RU WEBRip', 'Movie 2024 WEB-DL 1080p', 'movie', 0, 'WEB-DL should not match WEBRip'),

('RU BDRip/BluRay', 'Movie 2024 BDRip 1080p', 'movie', 1, 'BDRip title'),
('RU BDRip/BluRay', 'Movie 2024 BluRay 1080p', 'movie', 1, 'BluRay title'),
('RU BDRip/BluRay', 'Movie 2024 WEB-DL 1080p', 'movie', 0, 'WEB-DL should not match BDRip/BluRay'),

('RU 10bit', 'Movie 2024 2160p SDR 10-bit', 'movie', 1, '10-bit marker'),
('RU 10bit', 'Movie 2024 2160p SDR', 'movie', 0, 'No bit depth marker'),

('RU Reject HDR/DV/HLG', 'Movie 2024 WEB-DL 2160p HDR', 'movie', 1, 'HDR marker'),
('RU Reject HDR/DV/HLG', 'Movie 2024 WEB-DL 2160p SDR', 'movie', 0, 'SDR title'),

('RU Reject BR-DISK', 'Movie 2024 BDMV', 'movie', 1, 'Disc structure'),
('RU Reject BR-DISK', 'Movie 2024 BDRip 1080p', 'movie', 0, 'BDRip is allowed'),

('RU Reject AV1', 'Movie 2024 WEB-DL 2160p AV1', 'movie', 1, 'AV1 marker'),
('RU Reject AV1', 'Movie 2024 WEB-DL 2160p HEVC', 'movie', 0, 'HEVC should not match AV1'),

('RU Reject LQ', 'Movie 2024 WEB-DL 1080p LQ', 'movie', 1, 'LQ marker'),
('RU Reject LQ', 'Movie 2024 WEB-DL 1080p', 'movie', 0, 'No LQ marker'),

('RU Reject Upscale', 'Movie 2024 BDRip 2160p upscale', 'movie', 1, 'Upscale marker'),
('RU Reject Upscale', 'Movie 2024 BDRip 2160p', 'movie', 0, 'No upscale marker'),

('RU Reject AI', 'Movie 2024 [hand made Upscale AI]', 'movie', 1, 'AI upscale marker'),
('RU Reject AI', 'Movie 2024 WEB-DL 2160p SDR', 'movie', 0, 'Normal SDR title'),

('RU Reject REMUX', 'Movie 2024 UHD BluRay REMUX 2160p', 'movie', 1, 'REMUX marker'),
('RU Reject REMUX', 'Movie 2024 BDRip 2160p', 'movie', 0, 'BDRip is allowed');
