Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC02ABB018
	for <lists+openipmi-developer@lfdr.de>; Sun, 18 May 2025 13:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7ifMHu4LE2hkYaqqJs/WdaORzF0cKHK4PZ5zrpqZgv0=; b=aiXKeoOZKuKXNp4z7Jil9QZzUJ
	tGvQWxN1czBe9KZSbKeTOZa4OPsfNRiRyqtWLGyscGe/vCgWsAJxfGNapgdkOiLUn7fnWfLszx0kF
	50w4ZHS0m8fjFCoWFHxigq3eIyDgt7XFNEio7vGVuUrPQVKbrcOv5x7IIHKKZb2s1N4g=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uGcKU-0005KC-NU;
	Sun, 18 May 2025 11:37:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <praveen.balakrishnan@magd.ox.ac.uk>)
 id 1uFiyF-0001yI-Kf for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 00:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dw20B83WpMy5DaBCahe5i8vUhPWhia9cDLiwm2QORoY=; b=YY368zDYqmf9QvgKoR0/SFN/fA
 wcG3qTEH2R6EbmFmwb+GByLWt/iFY0nnVyA9zqsiDlidtfu7URsGCSZWPN63ianV+/lC1Bm6s6wy7
 NjbcuCnIq2nAIiB6T/dGPwLh1vhOs0F2lhu0/63S6Px7B84X39za0p8Ze8wCLP9JF/mY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dw20B83WpMy5DaBCahe5i8vUhPWhia9cDLiwm2QORoY=; b=N
 vdNudWvi1OqP5JgOewH9MkJAB9Map5g1rxM2NdP9vBVjCAtkeAzqWfeOr2tnnKGZNwtyEZap6dZ5U
 bmPjQFvzAdSrULtLBgyGEzGZcwzU1PdpqhKbgnidnPfOphGMPAc9wVf1u8yty4NA/esEflwph2yn+
 5SbQAQ8oATazShLw=;
Received: from fallback4.mail.ox.ac.uk ([129.67.1.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uFiyD-00017j-RM for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 00:30:39 +0000
Received: from relay18.mail.ox.ac.uk ([163.1.2.165])
 by fallback4.mail.ox.ac.uk with esmtp (Exim 4.92)
 (envelope-from <praveen.balakrishnan@magd.ox.ac.uk>)
 id 1uFiKD-0007ku-Gg; Fri, 16 May 2025 00:49:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ox.ac.uk;
 s=flood; h=MIME-Version:Content-Type:Message-Id:Date:Subject:CC:To:From:
 reply-to; bh=dw20B83WpMy5DaBCahe5i8vUhPWhia9cDLiwm2QORoY=; t=1747352957;
 x=1748216957; b=Uy7KaO9klmnsdhqLZq8MlM27tb+EPQalsgnYqrTC+4nVifK3iPC5BFrVKceMB
 8T5sfJLrYhzvJOIc8cKB9GH3EREWkZlIBxuqO+APxLJtPhrRw3bW+mVUkE/WHQmty1SEj3Jk/oYP8
 +4J7MKjP0tqaAuF5EccYmbGzbEcQDEXuXWG1cBKCOc/0JYPBfzZJav8cZ3QFcoLjeETMn7B/PHrYP
 yACa1gKQjDHHF4ayWfU2imGVLd2faxPCavqfiptNy/D5HYvoxS+9yeHwdk1Hc3QGUXZBTK1S5vWxg
 wTKtcYrpETRyVZlRbrSdSDtQKXWfYnaM57WtmAEcp4oQ4+/0NQ==;
Received: from ex03.nexus.ox.ac.uk ([163.1.154.243] helo=EX03.ad.oak.ox.ac.uk)
 by relay18.mail.ox.ac.uk with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <praveen.balakrishnan@magd.ox.ac.uk>)
 id 1uFiK0-000A8S-86; Fri, 16 May 2025 00:49:04 +0100
Received: from EX03.ad.oak.ox.ac.uk (163.1.154.243) by EX03.ad.oak.ox.ac.uk
 (163.1.154.243) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Fri, 16 May
 2025 00:49:03 +0100
Received: from LO0P265CU003.outbound.protection.outlook.com (40.93.67.52) by
 EX03.ad.oak.ox.ac.uk (163.1.154.243) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.37 via Frontend Transport; Fri, 16 May 2025 00:49:03 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lNsfjdS0xnSNO3skPDHDRhIvjGTTwjulNbbZbBzj4hTJ2mrp2iNFJD3RsFOnXQRqiKWEmaTsuykexhei2cES/gP4lK630O3m/jGRz7KaL707J8r744YHt/N49dVAY0maiMKsxxl4NlgLA63+U3qL6e9xbFsrJJ1bcIGJRuXrGq7tOqg/gYoL8hHYsogSMZ8mB35Jk7XyVUvoV6jZ22KhniF52g2C49MaR33Psb1cpoXizfEJ4YR8viMx/iqFGyAMzDs4/yPx4oxMJqrNivWQUmx8EF8oi0e9f1ikGZQiqmhVRZKjQGnEbkPVwJOlf3NUfHIVYILtVuCutOe6P1zPsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dw20B83WpMy5DaBCahe5i8vUhPWhia9cDLiwm2QORoY=;
 b=rzRS9r3kVUJPf/SsyE0br448CxLpBhNbNrppuTCwfF+76hcBOV2yBEZNn6KUh2QgTD5Qjpag7NeMP3xi/8yn4cN9hrWdOUVAMejdDbYjqRQ7ThXCuilHrKd8FClN2VSZOE8LNZ1XTtgo3rers9J6hdS3KhYq6Wf2VGuTQN6tlBooQ0CT78zgHh+KJxQYRhbBpOCjyVjBkOkrWGp6QRd2fvYKaQpbnH6WdGCR8uote9HDFco1mjhflk7zSTBINzwlPFS3b3rrQ3cYObhzzcIZ6lUA2LNrwGRHvvWeiMLnr1Nks9q1Hb+U3tUkk/HzGg3glmRT+EFs9/B/eIjFTjQNNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=magd.ox.ac.uk; dmarc=pass action=none
 header.from=magd.ox.ac.uk; dkim=pass header.d=magd.ox.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=UniOxfordNexus.onmicrosoft.com; s=selector2-UniOxfordNexus-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dw20B83WpMy5DaBCahe5i8vUhPWhia9cDLiwm2QORoY=;
 b=c1+SQLYPzvhJdW5niCcHuQ07ixlJrl0gpkBunnHmsLCWuhvPMp66NrvAYgCKuYjvs3o03x4YONyvkhj1DQQQUphGv5GuUdloHZ2IVcirGYVbwhlOp8NLTSZmz3PiqPKpdnJs1ye4wubdf8y+z1cwxR4S2N1tVgMCFVpqQPTmnT7yAGfQeiUPMmFw043xbBTjpnJt6fYhaSVEv/5NOG+m3SYpyxKgpHnTWskm5cxFjjcsC3xjJTF5pwrNmN5PuBEsQqaCrXQauGt7o2bJuJV2fjOt1NDIrXnY5mJTsEsq/mYS1IH0+k0pyWXDJwE/2SNsfZ7uSKocJORRzVkvvZGIIQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=magd.ox.ac.uk;
Received: from LO6P265MB6985.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:323::12)
 by CW1P265MB7531.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:214::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Thu, 15 May
 2025 23:48:57 +0000
Received: from LO6P265MB6985.GBRP265.PROD.OUTLOOK.COM
 ([fe80::639f:86e3:3b7c:f6dd]) by LO6P265MB6985.GBRP265.PROD.OUTLOOK.COM
 ([fe80::639f:86e3:3b7c:f6dd%5]) with mapi id 15.20.8722.031; Thu, 15 May 2025
 23:48:57 +0000
To: <corey@minyard.net>, <corbet@lwn.net>
Date: Fri, 16 May 2025 00:47:57 +0100
Message-Id: <20250515234757.19710-1-praveen.balakrishnan@magd.ox.ac.uk>
X-Mailer: git-send-email 2.39.5
X-ClientProxiedBy: LO2P265CA0239.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::35) To LO6P265MB6985.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:323::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LO6P265MB6985:EE_|CW1P265MB7531:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e9f491f-f0ad-4eef-84f5-08dd940b0eca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|41320700013|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UavdwifmTKClw4U5wNbGDi7HeBObACQGCcaoX28INKNjbh3x+rftINwg0Qh+?=
 =?us-ascii?Q?S447xYZzf7ez9ac9LnhP79TdEB1CraZXL6OYHf2LJJaN5Vj+EKAfIoFi9Lp3?=
 =?us-ascii?Q?CCQ57we9wADPYQhro3CnQwJ9dKtOgvpmyuXCiZuHQOL7l6kh8uVFTMoJ5O07?=
 =?us-ascii?Q?LOVuoqJuudF222YEx2kh3DlHi6T8mHmmWX8RRt33osk/WiXcMJiKLilhVvvV?=
 =?us-ascii?Q?gfM+VN5HlFounwIfoio2ILRQCIjh0XrN6JoDTlYPMqgyX35yZPct8IScVnXZ?=
 =?us-ascii?Q?8sQbsxH2vF/hr/mgFleS3u5hmApPCUiY6ZKEZ7nDeHQjyeRqLBReY4QHMnZV?=
 =?us-ascii?Q?nZb9AfpWihdcSyzE3WPPTpvlUT4NSKfIkLgsxI9KwmMypcOpIani1mk1UB1w?=
 =?us-ascii?Q?F960VTgBiTrODg5dJQte+fxZZxhLjKCWo8PgSj+pFQHhZ/J3h7nJt9Me4uHd?=
 =?us-ascii?Q?Nb0bGmjS1EQAZUG7FYuARBtwneZU3jPH3FlZtQbrlYFkUdw3yAT46zCRA5Fl?=
 =?us-ascii?Q?hZgd8bCpZ0CiBeIlFW+w7DUihWYLnhMX9JYNTyi8FEo4OjBR0+Tkk/ouPSzr?=
 =?us-ascii?Q?Nw6SOjtxrSNcBO5BXQHPmPRK7wiAqP1BzN8MFmL1HGkAIJohMrO/p9ZhHQ+n?=
 =?us-ascii?Q?MAaRoiRWs6nPkBvzuXj9Of1Wo/rOa8IBMQE2CjO/XreV80NTtCna9lyf0ibO?=
 =?us-ascii?Q?RLICp8BOWl58xFkEJ+kIsl893GeQINfIBrHPWpwoM6EBgLwFlykBc7rido8g?=
 =?us-ascii?Q?PaTnSK6EbvhF7gS0FrlX673uE1/Iy8zKxqL02TQhOSEak3riKxOCs0P8mpBf?=
 =?us-ascii?Q?TKH2BwDr9lQ5XypI0hGXVfh9verwpu5mafPjKF+0K1BGhOpqSTdxfmYP2CAU?=
 =?us-ascii?Q?pfJng6Y7I4zZdIubmuxwmzZmZtEVS2LNNZxPE36Tl1Cz+r5ZBQhyBYg/B1La?=
 =?us-ascii?Q?JqFj3gsmWTwvAKI/JLWD6KDS4fwmE9On8aaQPFfwph5iUi+t3t7MEMj6MNRp?=
 =?us-ascii?Q?IZpys/Zsn+EIkXt6NhzyrhxEdhDGRMsHkXAyYvRCGy5yPT2yhNMqdSzs7O0f?=
 =?us-ascii?Q?GFcYrH5KRCiqpjtK+RQY71QGFYZQa5ERsXP8rD1GgpeeZpyh6pLI2Pbxarf4?=
 =?us-ascii?Q?XDQnN8hf96LAe5fAlWgOx0wHHDp2Us8jfztVP2SVwsvFSZYruW7uKYEjPXsF?=
 =?us-ascii?Q?ezeOsDwv2DdBc2fHntM3DichXsLe9Go3iL/fizzvutjV1GSsHugD/cIPYA8H?=
 =?us-ascii?Q?so9XLuEM+WOz6HC+kG1FjeMFV+h/NQwKsRBWmC2Rn/fRm317Zr1FATOJKKAt?=
 =?us-ascii?Q?hadzn1b8Jzpf+rTC1wideASwUCf0OGqyfgkBwMCZ4B0lPbyZMQ37GYzxrrYl?=
 =?us-ascii?Q?jeOd5cDhw6+w2M+MRqc7u5tP9i5O0DpqAWWjcciX/8C4JwcgC86+br6tVpc5?=
 =?us-ascii?Q?+5CVAH5sV74=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LO6P265MB6985.GBRP265.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(41320700013)(366016)(376014); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wkdFfuqkVQKlNBZCui2iTqiDxXuEhMwr9MUyUK3Q+TTnE8i8HZfA97YLLKp1?=
 =?us-ascii?Q?gq/jiLkDAiODvpRZ9E4TyaSOvWOfxS4Y+vs3HfbvB3wiGSRv5+Rq3EYjmK59?=
 =?us-ascii?Q?h9ehK/M5x0iw0XVY+jRhODHhpUvMmGxx/XbtkwS5HRjfTdRwiAXAjB2bYs47?=
 =?us-ascii?Q?GreBWlS5CkIgZmG35pMRRr9gMvTsoYDlz72IaBWxrBVleNyZHYBLA6UIBvyl?=
 =?us-ascii?Q?xo72IBxVbVfg8PSwL90eWHc8PweGwEdzA0KBRqF7uKehtInv1/TxpBnHxtN6?=
 =?us-ascii?Q?wanOSttZoAokmvmDDY125uijRd/D4L+4kGeLQoTHh9aPcWMvRDMfzcNMSwrS?=
 =?us-ascii?Q?ISRf8AsolMwXWcPGJIt1z9AocntMLpHBprg1zdXQUjgrpwGy66EIreXh48aZ?=
 =?us-ascii?Q?b4YNMvdfnhDNqVa1+VdZ9Cf1zzERVIGP1k+sAR4N0TNPR5Whn2K46carhogJ?=
 =?us-ascii?Q?kajzK3iErd1LMvn2qigRTRbjYiBMqH2SKUbG4ankOEB7RaecqKA94WVtr55L?=
 =?us-ascii?Q?opd740dcHMgBNX/SQMvSmfTwzDpJJ5cuRNzZPK1uzCJyx//OTkYt96w/u5PQ?=
 =?us-ascii?Q?qfGJVBfi0jDsxCjtAfruZpr8xbdbaRy+zScjN+7M5f6w9p00JJlShOeGnaV7?=
 =?us-ascii?Q?CQxsWfR8oyuY2j9HG0GISIRgjXhyGOimI1hM+m2MpCFbxh1iWrmCKgEQsk7t?=
 =?us-ascii?Q?LzqLEZiHvtagz3L+4Xg1ZZyCIk5Yn2DaINUQvm8PFpjsL2ZFqHvLdFK3PPgY?=
 =?us-ascii?Q?ZH8NSbu6zy4h3n88KFSt4I7OOfrLnJUBWhlr6hq1LjwztjP6IzMNq8CM9XXP?=
 =?us-ascii?Q?4aLFgPfRXVIITW0B5Yz/hdFBu4NrmrtsGzZqgjR10esvIajbS8mn+dzkuX5L?=
 =?us-ascii?Q?5Nen36AyQH7g6q2ABozl6Y6hXZLuk/BfZL1E4kmxe+VmgTtszJxD0+ghUwen?=
 =?us-ascii?Q?bLikAJQZ5zkCu7T3fHIzocsHiHzYRNNI7Xc7N1Gr+uOfH/RGp0X7wd510WEf?=
 =?us-ascii?Q?7RquZugvUD2fs11rmXLekGgm11GPZVad4fy3FYhr5D3A8IFo8CU3b7s6rkJx?=
 =?us-ascii?Q?xMwCrHFyjUBTP4KAtnjs4ZXHmndGztGCv9rtoCfO+Lo6VMMyKicVyW+EBPsh?=
 =?us-ascii?Q?Y3eVimM1mTWr6avgJcMZTB6DeEDoT7FrKwutNBK3N4mC7VwnVCzwzGT7Ihwk?=
 =?us-ascii?Q?0/BN6gWauHEKwJlVoX73yh9eqUb8DrDSNd9qeP7LJiAOAjQpaeIppUpCkg+U?=
 =?us-ascii?Q?sw6qMbbzxrHz3zkgrX7Uc6CDMdc4B3T3DWxnHZFGJMA9hfy3eT/mRCb9jgiy?=
 =?us-ascii?Q?5uW+kmG+8RhpeKiV6jZds/McC2YPXmvLHVI+dwmFZkAkBJ9ClHlf9sYDsZhG?=
 =?us-ascii?Q?3Nqzdlm3d5ZgBaRQ69+2e853ZPHIBOb2C8yAnMPnlZJqeGi42bFWx5Y4+68s?=
 =?us-ascii?Q?ECoCA9qSUtjGRV+llN/I8JYCKZCz5FMduxH4lF4JC06jBnUL662Y3yForGOU?=
 =?us-ascii?Q?Su4op5fj2BgXJKoc1DYHXxBxEvq0mUP22eOCEPIFw4dDL9T/Z2kdGCu9FCQT?=
 =?us-ascii?Q?qzxYTV8zoz7iTVXwCiK/mS34gur+wedIZyFTd3DD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e9f491f-f0ad-4eef-84f5-08dd940b0eca
X-MS-Exchange-CrossTenant-AuthSource: LO6P265MB6985.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2025 23:48:57.1527 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: cc95de1b-97f5-4f93-b4ba-fe68b852cf91
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74OUewZK6HswG3FxlRiAs2OWm6kzbU1c74+X6Rqv7uUlAc9VfnJ8IxVxHjSpga6oZUQjqF670p7vrMF//CavtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CW1P265MB7531
X-OriginatorOrg: magd.ox.ac.uk
X-NTG-DKIM-verify: pass 
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Corrected various spelling and grammatical mistakes in
 Documentation/driver-api/ipmi.rst
 to improve readability. No changes to the technical content has been made.
 Signed-off-by: Praveen Balakrishnan <praveen.balakrishnan@magd.ox.ac.uk>
 --- Documentation/driver-api/ipmi.rst | 20 ++++++++++ 1 file changed,
 10 insertions(+), 10 deletions(-) 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [129.67.1.171 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [129.67.1.171 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [129.67.1.171 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [129.67.1.171 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uFiyD-00017j-RM
X-Mailman-Approved-At: Sun, 18 May 2025 11:37:17 +0000
Subject: [Openipmi-developer] [PATCH] docs: ipmi: fix spelling and grammar
 mistakes
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Praveen Balakrishnan via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Praveen Balakrishnan <praveen.balakrishnan@magd.ox.ac.uk>
Cc: Praveen Balakrishnan <praveen.balakrishnan@magd.ox.ac.uk>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Corrected various spelling and grammatical mistakes in
Documentation/driver-api/ipmi.rst to improve readability.

No changes to the technical content has been made.

Signed-off-by: Praveen Balakrishnan <praveen.balakrishnan@magd.ox.ac.uk>
---
 Documentation/driver-api/ipmi.rst | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
index dfa021eacd63..d9fb2376e8da 100644
--- a/Documentation/driver-api/ipmi.rst
+++ b/Documentation/driver-api/ipmi.rst
@@ -45,7 +45,7 @@ manual), choose the 'IPMI SI handler' option.  A driver also exists
 for direct I2C access to the IPMI management controller.  Some boards
 support this, but it is unknown if it will work on every board.  For
 this, choose 'IPMI SMBus handler', but be ready to try to do some
-figuring to see if it will work on your system if the SMBIOS/APCI
+figuring to see if it will work on your system if the SMBIOS/ACPI
 information is wrong or not present.  It is fairly safe to have both
 these enabled and let the drivers auto-detect what is present.
 
@@ -63,7 +63,7 @@ situation, you need to read the section below named 'The SI Driver' or
 IPMI defines a standard watchdog timer.  You can enable this with the
 'IPMI Watchdog Timer' config option.  If you compile the driver into
 the kernel, then via a kernel command-line option you can have the
-watchdog timer start as soon as it initializes.  It also have a lot
+watchdog timer start as soon as it initializes.  It also has a lot
 of other options, see the 'Watchdog' section below for more details.
 Note that you can also have the watchdog continue to run if it is
 closed (by default it is disabled on close).  Go into the 'Watchdog
@@ -317,13 +317,13 @@ This gives the receiver a place to actually put the message.
 
 If the message cannot fit into the data you provide, you will get an
 EMSGSIZE error and the driver will leave the data in the receive
-queue.  If you want to get it and have it truncate the message, us
+queue.  If you want to get it and have it truncate the message, use
 the IPMICTL_RECEIVE_MSG_TRUNC ioctl.
 
 When you send a command (which is defined by the lowest-order bit of
 the netfn per the IPMI spec) on the IPMB bus, the driver will
 automatically assign the sequence number to the command and save the
-command.  If the response is not receive in the IPMI-specified 5
+command.  If the response is not received in the IPMI-specified 5
 seconds, it will generate a response automatically saying the command
 timed out.  If an unsolicited response comes in (if it was after 5
 seconds, for instance), that response will be ignored.
@@ -367,7 +367,7 @@ channel bitmasks do not overlap.
 
 To respond to a received command, set the response bit in the returned
 netfn, use the address from the received message, and use the same
-msgid that you got in the receive message.
+msgid that you got in the received message.
 
 From userland, equivalent IOCTLs are provided to do these functions.
 
@@ -440,7 +440,7 @@ register would be 0xca6.  This defaults to 1.
 
 The regsizes parameter gives the size of a register, in bytes.  The
 data used by IPMI is 8-bits wide, but it may be inside a larger
-register.  This parameter allows the read and write type to specified.
+register.  This parameter allows the read and write type to be specified.
 It may be 1, 2, 4, or 8.  The default is 1.
 
 Since the register size may be larger than 32 bits, the IPMI data may not
@@ -481,8 +481,8 @@ If your IPMI interface does not support interrupts and is a KCS or
 SMIC interface, the IPMI driver will start a kernel thread for the
 interface to help speed things up.  This is a low-priority kernel
 thread that constantly polls the IPMI driver while an IPMI operation
-is in progress.  The force_kipmid module parameter will all the user to
-force this thread on or off.  If you force it off and don't have
+is in progress.  The force_kipmid module parameter will allow the user
+to force this thread on or off.  If you force it off and don't have
 interrupts, the driver will run VERY slowly.  Don't blame me,
 these interfaces suck.
 
@@ -583,7 +583,7 @@ kernel command line as::
 These are the same options as on the module command line.
 
 The I2C driver does not support non-blocking access or polling, so
-this driver cannod to IPMI panic events, extend the watchdog at panic
+this driver cannot do IPMI panic events, extend the watchdog at panic
 time, or other panic-related IPMI functions without special kernel
 patches and driver modifications.  You can get those at the openipmi
 web page.
@@ -610,7 +610,7 @@ Parameters are::
 	ipmi_ipmb.retry_time_ms=<Time between retries on IPMB>
 	ipmi_ipmb.max_retries=<Number of times to retry a message>
 
-Loading the module will not result in the driver automatcially
+Loading the module will not result in the driver automatically
 starting unless there is device tree information setting it up.  If
 you want to instantiate one of these by hand, do::
 
-- 
2.39.5



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
