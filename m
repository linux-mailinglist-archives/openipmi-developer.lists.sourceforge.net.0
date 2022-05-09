Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B449752047A
	for <lists+openipmi-developer@lfdr.de>; Mon,  9 May 2022 20:28:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1no87R-0002El-A2; Mon, 09 May 2022 18:28:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <d.hatayama@fujitsu.com>) id 1no57p-0002hh-3S
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 15:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MlXVxI2FnzGbvIu/CWm8gKBJ3ZWwolqRQs9xSfL0o60=; b=gJcCUJmgmZuGU5CrvcZibaOKBl
 +ELklG7izgJJEy6kvdmSc21yUQaT9IsipxtqKH4Vmfhf7VQFr402Jtxk5aAG2vUqYMOZDGXQnmVLF
 AZNvZOz3zfZxfUYj9K0SovqAU1ikQMLwM/bVi/pw/yApuqBUEr6OQ150tN+oXENc4mSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MlXVxI2FnzGbvIu/CWm8gKBJ3ZWwolqRQs9xSfL0o60=; b=NIc8HbBBkIMsiS+GJkbnT+8Ydf
 HMnxLq7bOdjel6Oi66kcxOsae0IOxHMIdDWRHj7kJfhEq1b2UD7ScvMC6XY52s/aG3O5Zi647pD8Y
 LqSX3BiHaLOlXr1MSN920HmglnuXssdbY7WuUKMpgWoB+cVw/Hreh8bpFUsXM8Dd6d78=;
Received: from esa5.fujitsucc.c3s2.iphmx.com ([68.232.159.76])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1no57i-0004z1-6B
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 15:16:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
 t=1652109394; x=1683645394;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xS2ZDM92CvkpLSnJq7Jznk26/ZMDw29ra/drEifi+4M=;
 b=h1vp6P0gk3xYJN4ncd9lkAtAcAK9LMp4Grli95GgbRtNUF/VbEUf9DJi
 d7FzZsUnroMgBBDt59oGNUq1HsJa2tYpDTIG9TBOx1wAJfXgEFrsEpfht
 8mzZ0Kx5TnoMe7HDnihLNMwTra0h86jKCxwGel7iknrY/QGpwwEDa7w2k
 tgsgYvR7Jij6tZtUrFstSSiwkx6Kni7fWJj3awL9wi9+lgI0/3qwHL/yi
 zt53A9uxvw8FvRW0hV0FrN2CeqnF6EA2Frfv61P9lEo74QzgWHlaFV23b
 xXMA6a3n7tkQZ9Ba23hx0E1zl5bcOZh+hvDlHSn8JqMN+UFDT1qZkzv3G g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="55509155"
X-IronPort-AV: E=Sophos;i="5.91,211,1647270000"; d="scan'208";a="55509155"
Received: from mail-os0jpn01lp2110.outbound.protection.outlook.com (HELO
 JPN01-OS0-obe.outbound.protection.outlook.com) ([104.47.23.110])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 00:16:12 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KP0CFKYRNmTXTmwL9JG0oC4GQgkB/pl4TAXCxaquTQi2mpfikgwQYy0i8q2i6vPeVpaH2GuK7gBuR63t1JW1LUNFxAjNVersbC9h8TdiBjflezHpU53Q82lnXPLv4wirYyJRKEuA73ZQCrb57ZakIuUVwqcJ+JrPKcYeATrnxhN28xpHXiJO2rffSK1Jw5uxRkQfFPudZpwdXRfmJr8fD9Fp4hSxcYDf9d2dYPWTHymwX3/ZrvUs3NQQnno5t2u1Tkf53IqwaAxjVtkhkHSIHVvIL8BkcyVOYUH1NXbXYQQxKeT5PLbIV2LxAq3TnGTE4TncUGKkynpMGLIjrmygdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MlXVxI2FnzGbvIu/CWm8gKBJ3ZWwolqRQs9xSfL0o60=;
 b=H+1Tk6iUFRaot1orKC1GRgl1SqDJXk5D2hXPcq48LhPh7gXvRwAju3ZJFbMzj6OjqSUOxrUqwP5QxUHlUtIwQf9Sbv11I8FuhMTDnHm9jTlJ8XnYR8eRZuGiGabL9xVnbfLrXmvTitKevsolEAyiCz8BKyZgayo7SIJbDtYciudVYTh5smc2WUV4/Xf5hw9rGx7ax2cfKXWimUANarDTZNV/KntgpM+JGW52DuY0ow3ik4XUuMIis57FWFq1Ij/VGkKE6W9VYUcyujJ6hW+y+zp3dDojEsR4nIytU/riRvA36esOaKgCTxTbJmvx932z0jUkCFfaf4RSuOsaN4+Itg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MlXVxI2FnzGbvIu/CWm8gKBJ3ZWwolqRQs9xSfL0o60=;
 b=h3jSOTQ/49e3CdAkGQmnT0kRfsZxVeHwnmHFjQIrg5SEwgadX6SIM218KZ4TTXnCicgDCVAuNJ5K36tGTV1PjiR6VVO4vPyaEXnMWkJYWxSMBENMBLbvoa90+8Vm3enWQ2GtCp7sSMFxA1XVsdggp5hIBlPRt0gWqyL7U6Qy1YM=
Received: from TYAPR01MB6507.jpnprd01.prod.outlook.com (2603:1096:400:a2::7)
 by TYCPR01MB7578.jpnprd01.prod.outlook.com (2603:1096:400:f3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.18; Mon, 9 May
 2022 15:16:09 +0000
Received: from TYAPR01MB6507.jpnprd01.prod.outlook.com
 ([fe80::dd9:8ea4:f7a3:bba1]) by TYAPR01MB6507.jpnprd01.prod.outlook.com
 ([fe80::dd9:8ea4:f7a3:bba1%5]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 15:16:09 +0000
From: "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, "akpm@linux-foundation.org"
 <akpm@linux-foundation.org>, "bhe@redhat.com" <bhe@redhat.com>,
 "pmladek@suse.com" <pmladek@suse.com>, "kexec@lists.infradead.org"
 <kexec@lists.infradead.org>
Thread-Topic: [PATCH 24/30] panic: Refactor the panic path
Thread-Index: AQHYWooYRc5K2GmPwUyqsvUuWmK42q0WuNLD
Date: Mon, 9 May 2022 15:16:08 +0000
Message-ID: <TYAPR01MB6507D01F5694BC33628BB7DB95C69@TYAPR01MB6507.jpnprd01.prod.outlook.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com>
In-Reply-To: <20220427224924.592546-25-gpiccoli@igalia.com>
Accept-Language: en-US, ja-JP
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Enabled=True;
 MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_SiteId=a19f121d-81e1-4858-a9d8-736e267fd4c7;
 MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_SetDate=2022-05-09T15:16:07.522Z;
 MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Name=FUJITSU-RESTRICTED;
 MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_ContentBits=0;
 MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Method=Standard; 
suggested_attachment_session_id: 7401546d-aea9-ffcc-3451-b3d59ad5888b
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb59992a-950f-4d9b-bb1c-08da31ced84d
x-ms-traffictypediagnostic: TYCPR01MB7578:EE_
x-microsoft-antispam-prvs: <TYCPR01MB75785B3922D747397677C56195C69@TYCPR01MB7578.jpnprd01.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /EPiPQ1iE6MAZZ3/WceQFfMaYOr3hQFI/B3njzUVTDpd2qqrdleVcVSpf2FVTxNNtbalFncurAfPSJh1TGekcVWhzGdngBQ1+1y4fpWxXGD4YbqP27hsV7t4f7edAJIa9NqvJ6n7aibYfCzJx3iCrgiakRvsQh+iG5l9bKWYIK9lR7U4sye5Ffr14bJM2DpODKZvgppK8wyMgyMnjj9zz9lKGpjtILIclyn9Cfxq7iI638lUEA+mX4g4zSn1iKbKIJuWOJ3wgQ4jYqCBsSjpaxF1HlO5mWp7q0WJMtlCD0BjB0ch6tZlY4AQFxnYjeUGNuxeoCOm1YjAXRB9jem+BLs2lLj2CUbfNKym9+HxzC2Pv6xmsq0K3lYUsZZPcvE6+2d0lcxXWKVWm7YLPqOKlRiwnw4OI2vDsNJI4/8LrtAiqLYsnmqIlUTgnHPK7io6xN9jXchkeV3Q9sjEe4hhdahLh1dwAB8LYIGr617lu+R8whOHRJa4M5tWuF2EvZ62teL7MYNxzCHbmiACl3mgo5ShSQ0DDxRTasN1jxNptwPdxEF7mHZIjH/caTRYuN3gomF2nisqKzgGg4spIBbsN2pZXB2htS0vpAAc+pFjcEK/Tyjvjsahu/O5fdELQCKYR+Lwd1Bwj2cvdOJquN0ygm/3FOS0+8mAEr4IZfbABNALU/lSCwrulCmPjai/zOTT7PqtftdxjvSq3wSowSe8pQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB6507.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(38100700002)(5660300002)(52536014)(85182001)(86362001)(38070700005)(83380400001)(82960400001)(122000001)(508600001)(186003)(6506007)(7416002)(8936002)(2906002)(107886003)(55016003)(71200400001)(7366002)(26005)(110136005)(8676002)(4326008)(9686003)(54906003)(33656002)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(316002)(7406005)(7696005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?Q2ZoaFpvc0xSMVIydW9vRDUvemw1eXFIbUlmTmRuc0dEdVEwZzdFcTlC?=
 =?iso-2022-jp?B?MnBtd2NvZ2tkTVRnYzZHdDRGSi85MXhRNGhoV2hSb2daYm1hTm94RXJx?=
 =?iso-2022-jp?B?THdsTjhIUDg4c21tTzdSYzZ0c2l3VTFtdTRmWTZyM3pMV1BZV1E4YnF5?=
 =?iso-2022-jp?B?KzNibHMwSGUrQ3RTK2tXemw5VEZQN1FaUXhONTRHSTBWU2FqSEJwLzRQ?=
 =?iso-2022-jp?B?N29OTmV1bkIrR1huOVN6L3hBaURRRm9Wb21vMXlwNjJiSnRzbFNBbDJS?=
 =?iso-2022-jp?B?Kzgrd1p5bXBESGdrakpDUFdIa1pyNTdRRFp6RnE0YWpEcG4zL1RtY2tk?=
 =?iso-2022-jp?B?amlvbUpJNTZOcTlkWVdsb2dFdk94OXdRbHM1WDF6Wkd2Zk5zb09rTlRD?=
 =?iso-2022-jp?B?M0YyOEVaaSt6dUdwTldNRU00am4relFSbm4wSVNuYktiMWszMTRGUU5k?=
 =?iso-2022-jp?B?bWJ3bWJqMVA3TE9kWENrdE5QQUp2aDZ6SjhaRFRQd2tQUVVQUXI5V3po?=
 =?iso-2022-jp?B?dGQzdGFTQkxXRy8yRW5RK2IwR3l5RHo1M1I0bmdYa1dhcS9NQ3luV013?=
 =?iso-2022-jp?B?TTlXYmgzSXl1ZnVVMGlOc3dMTTFFbXhkYzJldmZRL3NOZVVzU2RucDFU?=
 =?iso-2022-jp?B?TjNXengxZ3I5UFY3amdYeDN0ZDhlTnFpYkVpUXRLaTlNaGNKc2JsZGlz?=
 =?iso-2022-jp?B?S0tSQ2NKMkdqQzlud0hUSEJ5OXM2TkJnN3A3NG1TKzJCdG9NWWhPQ0pl?=
 =?iso-2022-jp?B?ZlRQSDBjdU1WWW5QOEdkbTlDYjF5YkhrVmMwcnNoMndIemRXZnRRNm1O?=
 =?iso-2022-jp?B?aW45cWFXVDZLSHRKVm9JVU5ROWJYNFV3aHlvNFFXTkVla013NTN1c3Zy?=
 =?iso-2022-jp?B?NTZsbEhFRE1BY1NQdnQreVU3dGlmMm1MN3ZYQUIzRTMrSG9CaC9rMm03?=
 =?iso-2022-jp?B?UHpJN0k2Nk0wWkcrZEJkZTJ1czZoK1JNZEY4VGdPWmEzQ1JJSDV1Q0xa?=
 =?iso-2022-jp?B?QzNveU5nWmIwc1IyR0dRcDZmb2VESHY0MWw0VjBvRnJRNG84WGpnbmRp?=
 =?iso-2022-jp?B?NWpwSUR2WXljdVA3OGpyNHZGcW10WjdFdUlFYWI5dlN1ZnhPZncrNGNw?=
 =?iso-2022-jp?B?NVhDNW1NbU1iQjZxRU1sQktJMjNrZ09rMWRmbWo0eWd1Y21Pd3FUcGlU?=
 =?iso-2022-jp?B?TzhWNmlTbUI5djY4eTRNSStjekdqcjc2QlRPSGp6bzY2LzdKRXkxOUVN?=
 =?iso-2022-jp?B?clJRRjhsbWFKT3F0TjY2cEJqMWl1aTdnOGZPOU8rN1d4VnIza2wxOHpw?=
 =?iso-2022-jp?B?YUJscjlYOTRjSVE0VXVqUUNiSHVYRE44QmRSUGV3WjJxT1JOSkxjeVVR?=
 =?iso-2022-jp?B?SDVDc1ZlL2VKb2xxUFAvR05SVC9oOVZVUVYrU1BTUlhLb0p2VEN6WG0x?=
 =?iso-2022-jp?B?dHcycEVHVmEzRmpjQldpWHd5dXdnTFBUbi9FQkd6NTg5VTJuMGJDQnZ2?=
 =?iso-2022-jp?B?NlBKb3hrQThvTkpoK2xPU1kwSUg1MDhvbVlHOWpIamR4OXJhQmxEdDBx?=
 =?iso-2022-jp?B?MEdFdXJXYkpCaGwrMmJBaUNaUnFVL2xKY2lpY0p6cHhpNFdTNG9MUVIv?=
 =?iso-2022-jp?B?Q0RMUTZJTmVKWEVmMDNrYnFOT3l2aUFzTmFxV09kQSs5eCthQXkwdmsw?=
 =?iso-2022-jp?B?SGRsSnkzK3c3V3N1V0FaYVFFMGFKTG5FUU8rTmFVT3N1ekx0cDBVbDlv?=
 =?iso-2022-jp?B?QXV3UTRCTlN1WGo2MWQwSVo4c2VGUnk0aVNNNFJzd3BNOVB2ZCtMWmxP?=
 =?iso-2022-jp?B?dGlzVjVNQnQ2b01aWXhRdXJtRGVJWGZsSXBJZ1VGMWlFR2NESjFTcVlw?=
 =?iso-2022-jp?B?M1JELzNUd013T1ByVGF1Ykh0Nm91MW5xai9ZUU5lRjFsdHdEQ0NtUnNR?=
 =?iso-2022-jp?B?L00xTkhpaithV1pYY1krR05zUTZYTFZPUk9RU0xtSkhhRmhpdFc4RGNX?=
 =?iso-2022-jp?B?eTFpMnd0QlloT0plSm9NdjBuakFweWUwRGtqUjVsNVovRkRob0c0TDQr?=
 =?iso-2022-jp?B?cW1PZ3FYRHBtc3Q2c1FwOFR1Lzk5czhMenVER01OZm9Xa2VwSjM4a1Vm?=
 =?iso-2022-jp?B?OUFBTFpRdTBiY3lqTXIvVHNhN2JWZHVra2dTTFhaTzRFSmh1c0taRERB?=
 =?iso-2022-jp?B?YTdqeGI3dWRDYTYzR1lYcTF1T3dHZ1RGWXYza1cvM0lxUGtldDhmUVZv?=
 =?iso-2022-jp?B?c1dJelE5d1hSV3hybS9VUVN4aEh0aTRPSDd3OElVZVdaSUlxY2wwd2lR?=
 =?iso-2022-jp?B?Slh6TFJjMXMrN25OaG9ibS9hQWZkYmNVb0RFZ1d0aFZLcU5lNUpzV1lX?=
 =?iso-2022-jp?B?YjBEZlRDZE1CeGMyaWRMa1dvT05rVW9RUG1WOUl4aHRkenoyTjFXaitY?=
 =?iso-2022-jp?B?YW1oQ001bUIyRFJYdUJTdzlKekt0WndWSEJpaXU5dzhkVEpOb3p4TzIr?=
 =?iso-2022-jp?B?MUdoTXV6ZVIycy9nblliVHY4clRkRTNlcVNwdWhhQWM4UlBFTDZBYmw0?=
 =?iso-2022-jp?B?ME5aQThQQT0=?=
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYAPR01MB6507.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb59992a-950f-4d9b-bb1c-08da31ced84d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2022 15:16:08.8030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q5IRFdj2tV7IAxoGvUQ3KW79KqhlLrLxHCiqQH9LHk/aZve0Mz95uDPlSCWwe/uJV5hchYymXmHVnJXclB022HSy1r9hKQtbFufztomtIsU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB7578
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sorry for the delayed response. Unfortunately, I had 10 days
 holidays until yesterday... > .../admin-guide/kernel-parameters.txt | 42
 ++- > include/linux/panic_notifier.h | 1 + > kernel/kexec_core.c | 8 +- >
 kernel/panic.c | 292 +++++++++++++----- >
 .../selftests/pstore/pstore_crash_test [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.159.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1no57i-0004z1-6B
X-Mailman-Approved-At: Mon, 09 May 2022 18:28:26 +0000
Subject: Re: [Openipmi-developer] [PATCH 24/30] panic: Refactor the panic
 path
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "halves@canonical.com" <halves@canonical.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "alejandro.j.jimenez@oracle.com" <alejandro.j.jimenez@oracle.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "feng.tang@intel.com" <feng.tang@intel.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "hidehiro.kawai.ez@hitachi.com" <hidehiro.kawai.ez@hitachi.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "mikelley@microsoft.com" <mikelley@microsoft.com>,
 "john.ogness@linutronix.de" <john.ogness@linutronix.de>,
 "corbet@lwn.net" <corbet@lwn.net>, "paulmck@kernel.org" <paulmck@kernel.org>,
 "fabiomirmar@gmail.com" <fabiomirmar@gmail.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "dyoung@redhat.com" <dyoung@redhat.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "coresight@lists.linaro.org" <coresight@lists.linaro.org>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "rcu@vger.kernel.org" <rcu@vger.kernel.org>, "bp@alien8.de" <bp@alien8.de>,
 "luto@kernel.org" <luto@kernel.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "jgross@suse.com" <jgross@suse.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel@gpiccoli.net" <kernel@gpiccoli.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 "senozhatsky@chromium.org" <senozhatsky@chromium.org>,
 "mhiramat@kernel.org" <mhiramat@kernel.org>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "vkuznets@redhat.com" <vkuznets@redhat.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Sorry for the delayed response. Unfortunately, I had 10 days holidays
until yesterday...

>  .../admin-guide/kernel-parameters.txt         |  42 ++-
>  include/linux/panic_notifier.h                |   1 +
>  kernel/kexec_core.c                           |   8 +-
>  kernel/panic.c                                | 292 +++++++++++++-----
>  .../selftests/pstore/pstore_crash_test        |   5 +-
>  5 files changed, 252 insertions(+), 96 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 3f1cc5e317ed..8d3524060ce3 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
...snip...
> @@ -3784,6 +3791,33 @@
>                         timeout < 0: reboot immediately
>                         Format: <timeout>
> 
> +       panic_notifiers_level=
> +                       [KNL] Set the panic notifiers execution order.
> +                       Format: <unsigned int>
> +                       We currently have 4 lists of panic notifiers; based
> +                       on the functionality and risk (for panic success) the
> +                       callbacks are added in a given list. The lists are:
> +                       - hypervisor/FW notification list (low risk);
> +                       - informational list (low/medium risk);
> +                       - pre_reboot list (higher risk);
> +                       - post_reboot list (only run late in panic and after
> +                       kdump, not configurable for now).
> +                       This parameter defines the ordering of the first 3
> +                       lists with regards to kdump; the levels determine
> +                       which set of notifiers execute before kdump. The
> +                       accepted levels are:
> +                       0: kdump is the first thing to run, NO list is
> +                       executed before kdump.
> +                       1: only the hypervisor list is executed before kdump.
> +                       2 (default level): the hypervisor list and (*if*

Hmmm, why are you trying to change default setting?

Based on the current design of kdump, it's natural to put what the
handlers for these level 1 and level 2 handlers do in
machine_crash_shutdown(), as these are necessary by default, right?

Or have you already tried that and figured out it's difficult in some
reason and reached the current design? If so, why is that difficult?
Could you point to if there is already such discussion online?

kdump is designed to perform as little things as possible before
transferring the execution to the 2nd kernel in order to increase
reliability. Just detour to panic() increases risks of kdump failure
in the sense of increasing the executed codes in the abnormal
situation, which is very the note in the explanation of
crash_kexec_post_notifiers.

Also, the current implementation of crash_kexec_post_notifiers uses
the panic notifier, but this is not from the technical
reason. Ideally, it should have been implemented in the context of
crash_kexec() independently of panic().

That is, it looks to me that, in addition to changing design of panic
notifier, you are trying to integrate shutdown code of the crash kexec
and the panic paths. If so, this is a big design change for kdump.
I'm concerned about increase of reliability. I'd like you to discuss
them carefully.

Thanks.
HATAYAMA, Daisuke



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
