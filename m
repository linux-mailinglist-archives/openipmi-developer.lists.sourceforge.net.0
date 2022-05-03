Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 525F7518C0A
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 May 2022 20:14:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nlx2O-0000f3-62; Tue, 03 May 2022 18:14:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mikelley@microsoft.com>) id 1nlx2N-0000ex-3k
 for openipmi-developer@lists.sourceforge.net; Tue, 03 May 2022 18:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uHdWyr/lQ4oMAILHgYnTcyVdhz+H5tpb/ZbxMPdRznY=; b=emjxMdkgQPuTPpbaGPODh1zY+O
 JtY9zc+UysZZ3MSLjnawtRVnJBWQv+ggm+N/AbvROBaJFaH+Oje9zl5sq9Piz4q7Mcm3jerb+f743
 hC3QTi6qA2F4ODm/Bnzg843OjIYaTHBbpMEkgbdZWTpmtGmdAmK/x55n8A20mqI3vMp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uHdWyr/lQ4oMAILHgYnTcyVdhz+H5tpb/ZbxMPdRznY=; b=In2if7AWKiDAGsZaPS9TWYTo5m
 Yq5qLKyx9BZUtBC61s+HlzoNwpgEOJnV8DVrV0pP4GYhNY3WXwel9zq0WVXwZl5hXO7bjgfBgRbhI
 GJbWNqZwAvnHL9Mf0/2GqcUmd2FvNZWEgIaEuuohEPj7eEX9Hevj+BcuYSsjalB0ZW+E=;
Received: from mail-cusazon11020020.outbound.protection.outlook.com
 ([52.101.61.20] helo=na01-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlx2J-000IVP-HN
 for openipmi-developer@lists.sourceforge.net; Tue, 03 May 2022 18:14:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=he4GrjUJs+pbbWOQAVUF9nF+ZBMO4NsBCGINPa3zG0Bz1QzGye7Hk6i58aQzP3Blsk4b3K481euJuFtVdA2Zl8Y9mhnDmx4UXp3nDA+I9uaN0WjUXEvwqxyunj30uyFdLPvsh9QNCwG5izqZo+EK0KzoTtamKSkqRqHzvoVQurdi/xURo6vL0AtXF6EhXCNcLLW4aPu7HrQvw+xU2zbD/dD/frLKp7O3y+bzOKLeBqXNtsEsnaWHIUMmyPLivm3BGEnNiyZpnm/0uTsvEZ6C6Plz7pX/bbiWmLQuAfY6WUyxI/e9r/KBnxIFktKIoSecveRqgN64wh8mo4s0A8CH4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uHdWyr/lQ4oMAILHgYnTcyVdhz+H5tpb/ZbxMPdRznY=;
 b=Z8Q7zSE2FHB3mX9406scaZ7L/J5DU+5rZWfUrzWaCXcLS/K/Bms05PaCHEzN2F0GO7mbO6MP/3efMdcYTEEe6qc6Zsvo2EtFOPVsWEPlAvCGrkAh+cFw5roduWkgm8+olQJb+7ki2gL4oCfx5PGOE4yNt+SwPcn5h9gLzy86+3AHBjA6HCldqjdgt7TTYQ8wvJjH4tT01cap8x/HBDfBqMP1s1hw6+naeoy1L5qe3eXoSLNH9T1uTOMsGhvGrZM99GizzxF42pM4Xn/M5rWCreeHz3I/LVKPYt0pTXJYbtmxmNqft5UKqxvNh52cg/eUbLZXIi8dpy/iPrIu+ZR2bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uHdWyr/lQ4oMAILHgYnTcyVdhz+H5tpb/ZbxMPdRznY=;
 b=N8b4zUYeoSjVoBnIOHZk9x7r326uVrpKbKzx6XXMOIrzFUAHQx5Vf0lGVGrXZlrXWa6AW+P6rzthVyShps/A6r3TZdabpgEBaTS9lCeVdBHNNE//vXD9jQ0tGm9xQNx3bTBkWGRMD+GYCBn7m/MbMeekivw2v/V0MngTJJcvwwM=
Received: from PH0PR21MB3025.namprd21.prod.outlook.com (2603:10b6:510:d2::21)
 by PH7PR21MB3140.namprd21.prod.outlook.com (2603:10b6:510:1d4::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.6; Tue, 3 May
 2022 18:13:52 +0000
Received: from PH0PR21MB3025.namprd21.prod.outlook.com
 ([fe80::dd77:2d4d:329e:87df]) by PH0PR21MB3025.namprd21.prod.outlook.com
 ([fe80::dd77:2d4d:329e:87df%5]) with mapi id 15.20.5250.006; Tue, 3 May 2022
 18:13:52 +0000
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, "akpm@linux-foundation.org"
 <akpm@linux-foundation.org>, "bhe@redhat.com" <bhe@redhat.com>,
 "pmladek@suse.com" <pmladek@suse.com>, "kexec@lists.infradead.org"
 <kexec@lists.infradead.org>
Thread-Topic: [PATCH 16/30] drivers/hv/vmbus, video/hyperv_fb: Untangle and
 refactor Hyper-V panic notifiers
Thread-Index: AQHYWonHTKAKlsJlK0mi6B2rKp5WnK0HF4GAgABmLoCABfgOgA==
Date: Tue, 3 May 2022 18:13:52 +0000
Message-ID: <PH0PR21MB3025A46643EEDA6B14AC1ECED7C09@PH0PR21MB3025.namprd21.prod.outlook.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-17-gpiccoli@igalia.com>
 <PH0PR21MB30250C9246FFF36AFB1DFDECD7FC9@PH0PR21MB3025.namprd21.prod.outlook.com>
 <2787b476-6366-1c83-db80-0393da417497@igalia.com>
In-Reply-To: <2787b476-6366-1c83-db80-0393da417497@igalia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=b41f9d07-1c9e-45a3-8ea4-5e837b666291;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=true;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=Internal;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2022-05-03T17:44:15Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microsoft.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40ac3dec-95e5-41bb-b783-08da2d30adb3
x-ms-traffictypediagnostic: PH7PR21MB3140:EE_
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <PH7PR21MB3140268695323CBF6259C45AD7C09@PH7PR21MB3140.namprd21.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FnIu9JpCdSU0bQtZUV5dEj7PTdHFP+LtwhgAsFHYKotKFZawzkNh1lUKYQokTK/oCA2oTWbBewVD72G73c3XzAhVtFhiLcEIRL5qdiF/xtEroSX1oj54Gq2PNnlzvUiCrd5TgrPM8LLQol7Wv8rD+kp4HyGQqXAFjMMN/Q2b4ZnVWNQ00/Vk5ypMiLQC/Ge/LCjSKneNG1xvmc2w9eX5SQ+/NyoLbnPryEqqBn7XuhMGDPslUzBOCcBN9YzUH68DS3hVF/Y5YhZtptZAZl2fTODZaJ2OwlykQp2I7Y6oG604LaPSsD0WPRmfpuaxoaOJIBdg0z+sdf+ubxmrC2Lr6MC6CrHAYG2L9kYqxZ4TqUtfoYZe7iudHWuxS69IuDr6iBZqdpgoDeHt3w3VzP9WxgI8jPwJCQwQv1mBZQJmhCbOFyKbCW388TQmxGJBM+r/qP9RJnhIgeQ5lWNdHZQKBsJxXz9+WhNGVkCgDdXgrY8MH9TQ2Sf3xIRTrK1LLXk+zeEbeaxHdfl56bAKPB5NuJiRqc1btjZYZQk16htM9PY07KltFPdC2rrMXk7odT8u+eVy+MBlh+KWuBEiY95z+g0uDfcC050kDJa8XsOULxaq6Wf52amSPQlpcL9dg6HDsB0YS1ka7dqVfJuoxshV5S/Ebu1mJvmoKPDJAT4s5+acqoljARobFpoBsZLvfqrvHnUWSvRY+07fOtsxPKpPoCJ8/mvijdRVVId+MDSBmoOuSdmutfrJNctuNoWS/Afw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR21MB3025.namprd21.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(451199009)(7366002)(10290500003)(5660300002)(508600001)(52536014)(7416002)(8936002)(9686003)(26005)(122000001)(71200400001)(7406005)(38070700005)(38100700002)(66556008)(86362001)(53546011)(76116006)(7696005)(110136005)(8676002)(66446008)(66476007)(64756008)(4326008)(6506007)(54906003)(66946007)(82950400001)(82960400001)(2906002)(186003)(55016003)(316002)(83380400001)(8990500004)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDhJRGpJaGwrNTR3ZDdabHBaaGZVMTUvb1hqVWwrclBlK0wrMzIzQmRXWlVN?=
 =?utf-8?B?RFB5cC91SGNPZ09CQ1RhWDZEbDBnZHI5d29CRFFlb2ZRdzYyZ3ViV2VmWVZS?=
 =?utf-8?B?L1NqZ3hyM3BTTW9YT2pQZFBtUVN1SmFERjM4Sk5qT2RlbkVQWU55bGJLZ3FE?=
 =?utf-8?B?TmJyZmV4VHJ3MjQvV212REJjTDJlMHZabGZ1RWtUUHpnUGVOUlNya2lNZHpR?=
 =?utf-8?B?V3lzZm1nb1FDZVR3Z3JmUVZPTEVEYkZCSUVjUVhpbU1QRkpwWEVOK2NzRU8v?=
 =?utf-8?B?Y0hSN0toQWFJRFFrVXZJR2tlZUtnd3JmOTVObnJla0NLSVE2Y1haRTlEd3Vw?=
 =?utf-8?B?eVUveFhjVWMybVE4V2FHZWNDdzY3d3habUZMcndIK21GdHp3Wmw3RWFMTEtu?=
 =?utf-8?B?NURSWU5UY28xbzdYL1hINmtEdUZGd210MTFSVGVvVWFnMnJwT3YxVDJCa1dK?=
 =?utf-8?B?cm8ra2ppeHdnalJnRDM5aU8zZFBjMEoyZXhUU3ZTZ05vSFZOT1hHTFFGOXNB?=
 =?utf-8?B?U1BaVXFxOGRhTWRadnZ4YW5yYWFrZU5oWlJ5N0xvb05ZU0JtSW9ZdE1hVmRy?=
 =?utf-8?B?RXpGS3h5a2JkYkJEbW0wcVF2eWZtSVpsTVF1MnJ0dUxqTEdFY1htaThXY0g4?=
 =?utf-8?B?T0QzODZMQVB1ejl4b3ZOWHA4TDErbWxzNFpjOVNqNjUrbGJVVGpieS9SV2pS?=
 =?utf-8?B?VFZPU1ErQXlFbTZZek45Nk5WZVF5eThLQUk1bmxSMUxyeDgwUjFJMHQwQkc1?=
 =?utf-8?B?QmdSVjFyQ1p3RzV0SDRCTjhKdzFwdU5Ec0M0SDV4M2JBbHJxRXJhRm1IaW9E?=
 =?utf-8?B?bHF5WHlCczd3bU9VeXhERGw0L21jalFmOGxBTHhBWEhiT3pIMU5zb0FkZDNi?=
 =?utf-8?B?QUZGUEFoSjRiNUx4ZUxoekRZeHhwRmd5R3lSOTNJNVhXbzYvaTVCOFU1M0NY?=
 =?utf-8?B?YUtiWXZuQlJDcnYzWUVDRURpWmYxb0ppaXN6cWU2L1U4YzBFNGdXQ0FJWHNU?=
 =?utf-8?B?WlBkTjdzSFc4Sk1QSEYwMERjY0xnSGpUVTdhMmJqV3ZQYVYyN1dBT0pzNVVL?=
 =?utf-8?B?OHQ1QXg5VXJic3p1WHdDc2xKRklMOUk2KzRYTmMvWHBDQ3B6d2hLSVkxRm9M?=
 =?utf-8?B?aWtCaktiYWx4blJGVjQxV3dJczBSTzQzNVNMYVdWZTJpUG5GVUJWV2RNTHNI?=
 =?utf-8?B?bk5hRlJNVmZFOENOVk1nOVVDMldvcUlGRzVMR0dCNnBRVDBySVNvWVZrUnFG?=
 =?utf-8?B?SFMrVVh6SW9VVWZ0N2pUNDFiRStHaVNiVkZJZGJSQ2c5aERqRnBuZDg1T3dy?=
 =?utf-8?B?dDhKdngyWFZBSGtUS2lacmlPYWJDay9LYkFNc0JZM1JNSmRSQ2hjeGRqa1pj?=
 =?utf-8?B?eFI5S2s1MkcwOEI4dWFjU1ordnlCM0IrQnhycWJWYVEwVXVLTVIyeGJabGhJ?=
 =?utf-8?B?N1YvTkhWNVlBUXVyaUF2UkZ0ZnlvdEhxbEJWU3FsMTM1Sjc4QWxQdy8xNVMw?=
 =?utf-8?B?K05NazBSdkV6VjllUllTdzFUK2k0NExGSlpVbkcyUVBqSjEwS3lpYVBucGd5?=
 =?utf-8?B?eXZiM3ZaMjM5OTF1S3JNYmY0SXlmQ2RiODNZY1Npd3JXcGxOTW03a1YycFN3?=
 =?utf-8?B?V3UydCt4NkxEWWhxMFh0YjNLWElJdHRablBrVzdPZDM5azBYQm5RNUxnbHNV?=
 =?utf-8?B?eVhKdDIxSHl5d01DZEp1emFCK3VOM2VKekF1Y2w3N0gwTHVnZmNXVUtrL2M4?=
 =?utf-8?B?UXlSc0YybWxncEVJZVNBNXkxWEVhcForc3Y5TGJZUjNsNEwwcWlPaTJjME44?=
 =?utf-8?B?VjJ1K25uQmZ0RGtMaHIrb0oxQnJ1Sm9vMGdTd1RxVklDcFoveHcybkxlOTJ3?=
 =?utf-8?B?eXhvWkRySEx5WlBmcG5KdEtBalZrcHNwMXZwbWJnYUpHU1dsT3ltMFgzRVd3?=
 =?utf-8?B?Nk03eEZHOWRRUkIvYVZXZGJTdXJibnpvcHpuby9ESThJTGNKVTFjYkxQQWlK?=
 =?utf-8?B?VlBVcVI5VmtYYms2bFF5cFl0WUFoOW9YOFNkZTh1bG5DQlJoWkJNQ0g0VU5B?=
 =?utf-8?B?M2RHRW1CNEtFRnFaVkhSN2p1UnVFczFpdHRYQ3JadnZoSzJyZFlqKzl2SlJO?=
 =?utf-8?B?VWpDVGlDSVdmbTJIOWNVa3hMMm9vMHFVOTQvSng0RG9HWEgvdTN0VkdtUFcr?=
 =?utf-8?B?amE1NWRNWUlMeUJKQk40aU9pUGRrU1E0SmxZTTdRMWh4RUhFOVpkR2hTRXps?=
 =?utf-8?B?aDRxeUdKbHJTc281c0hObXdkbCt2TFE1aHVES0VBczgwMjE2b0pqYmVOUTNv?=
 =?utf-8?B?VnVaZlRiTmpjQWVUeE00V0p5cERtUWpuVFU4YVFOd1V3ZHY5SGJqRXNYLzhW?=
 =?utf-8?Q?teI2zGknLdIGYpMk=3D?=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR21MB3025.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40ac3dec-95e5-41bb-b783-08da2d30adb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2022 18:13:52.1349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4ui4kPv1QwwCeWcwraRIbiZaeFVEkUzs/5EQ9xwdazJ0cXTpmhELoQLf2pdHck77pdCw8h9HzCi86jIk8NpF5JK+JkBkOskELkyDCBUt8k0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR21MB3140
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Guilherme G. Piccoli <gpiccoli@igalia.com> Sent: Friday,
 April 29, 2022 3:35 PM > > Hi Michael, first of all thanks for the great
 review, much appreciated. > Some comments inline below: > > On 2 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.61.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nlx2J-000IVP-HN
Subject: Re: [Openipmi-developer] [PATCH 16/30] drivers/hv/vmbus,
 video/hyperv_fb: Untangle and refactor Hyper-V panic notifiers
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
From: "Michael Kelley \(LINUX\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Michael Kelley \(LINUX\)" <mikelley@microsoft.com>
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
 KY Srinivasan <kys@microsoft.com>, "will@kernel.org" <will@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 "john.ogness@linutronix.de" <john.ogness@linutronix.de>,
 "corbet@lwn.net" <corbet@lwn.net>, "paulmck@kernel.org" <paulmck@kernel.org>,
 "fabiomirmar@gmail.com" <fabiomirmar@gmail.com>,
 "x86@kernel.org" <x86@kernel.org>, Dexuan Cui <decui@microsoft.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "dyoung@redhat.com" <dyoung@redhat.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>, Andrea Parri <parri.andrea@gmail.com>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 Tianyu Lan <Tianyu.Lan@microsoft.com>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
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
 "d.hatayama@jp.fujitsu.com" <d.hatayama@jp.fujitsu.com>,
 "mhiramat@kernel.org" <mhiramat@kernel.org>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 vkuznets <vkuznets@redhat.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Guilherme G. Piccoli <gpiccoli@igalia.com> Sent: Friday, April 29, 2022 3:35 PM
> 
> Hi Michael, first of all thanks for the great review, much appreciated.
> Some comments inline below:
> 
> On 29/04/2022 14:16, Michael Kelley (LINUX) wrote:
> > [...]
> >> hypervisor I/O completion), so we postpone that to run late. But more
> >> relevant: this *same* vmbus unloading happens in the crash_shutdown()
> >> handler, so if kdump is set, we can safely skip this panic notifier and
> >> defer such clean-up to the kexec crash handler.
> >
> > While the last sentence is true for Hyper-V on x86/x64, it's not true for
> > Hyper-V on ARM64.  x86/x64 has the 'machine_ops' data structure
> > with the ability to provide a custom crash_shutdown() function, which
> > Hyper-V does in the form of hv_machine_crash_shutdown().  But ARM64
> > has no mechanism to provide such a custom function that will eventually
> > do the needed vmbus_initiate_unload() before running kdump.
> >
> > I'm not immediately sure what the best solution is for ARM64.  At this
> > point, I'm just pointing out the problem and will think about the tradeoffs
> > for various possible solutions.  Please do the same yourself. :-)
> >
> 
> Oh, you're totally right! I just assumed ARM64 would the the same, my
> bad. Just to propose some alternatives, so you/others can also discuss
> here and we can reach a consensus about the trade-offs:
> 
> (a) We could forget about this change, and always do the clean-up here,
> not relying in machine_crash_shutdown().
> Pro: really simple, behaves the same as it is doing currently.
> Con: less elegant/concise, doesn't allow arm64 customization.
> 
> (b) Add a way to allow ARM64 customization of shutdown crash handler.
> Pro: matches x86, more customizable, improves arm64 arch code.
> Con: A tad more complex.
> 
> Also, a question that came-up: if ARM64 has no way of calling special
> crash shutdown handler, how can you execute hv_stimer_cleanup() and
> hv_synic_disable_regs() there? Or are they not required in ARM64?
> 

My suggestion is to do (a) for now.  I suspect (b) could be a more
extended discussion and I wouldn't want your patch set to get held
up on that discussion.  I don't know what the sense of the ARM64
maintainers would be toward (b).  They have tried to avoid picking
up code warts like have accumulated on the x86/x64 side over the
years, and I agree with that effort.  But as more and varied
hypervisors become available for ARM64, it seems like a framework
for supporting a custom shutdown handler may become necessary.
But that could take a little time.

You are right about hv_stimer_cleanup() and hv_synic_disable_regs().
We are not running these when a panic occurs on ARM64, and we
should be, though the risk is small.   We will pursue (b) and add
these additional cleanups as part of that.  But again, I would suggest
doing (a) for now, and we will switch back to your solution once
(b) is in place.

> 
> >>
> >> (c) There is also a Hyper-V framebuffer panic notifier, which relies in
> >> doing a vmbus operation that demands a valid connection. So, we must
> >> order this notifier with the panic notifier from vmbus_drv.c, in order to
> >> guarantee that the framebuffer code executes before the vmbus connection
> >> is unloaded.
> >
> > Patch 21 of this set puts the Hyper-V FB panic notifier on the pre_reboot
> > notifier list, which means it won't execute before the VMbus connection
> > unload in the case of kdump.   This notifier is making sure that Hyper-V
> > is notified about the last updates made to the frame buffer before the
> > panic, so maybe it needs to be put on the hypervisor notifier list.  It
> > sends a message to Hyper-V over its existing VMbus channel, but it
> > does not wait for a reply.  It does, however, obtain a spin lock on the
> > ring buffer used to communicate with Hyper-V.   Unless someone has
> > a better suggestion, I'm inclined to take the risk of blocking on that
> > spin lock.
> 
> The logic behind that was: when kdump is set, we'd skip the vmbus
> disconnect on notifiers, deferring that to crash_shutdown(), logic this
> one refuted in the above discussion on ARM64 (one more Pro argument to
> the idea of refactoring aarch64 code to allow a custom crash shutdown
> handler heh). But you're right, for the default level 2, we skip the
> pre_reboot notifiers on kdump, effectively skipping this notifier.
> 
> Some ideas of what we can do here:
> 
> I) we could change the framebuffer notifier to rely on trylocks, instead
> of risking a lockup scenario, and with that, we can execute it before
> the vmbus disconnect in the hypervisor list;

I think we have to do this approach for now.

> 
> II) we ignore the hypervisor notifier in case of kdump _by default_, and
> if the users don't want that, they can always set the panic notifier
> level to 4 and run all notifiers prior to kdump; would that be terrible
> you think? Kdump users might don't care about the framebuffer...
> 
> III) we go with approach (b) above and refactor arm64 code to allow the
> custom crash handler on kdump time, then [with point (I) above] the
> logic proposed in this series is still valid - seems more and more the
> most correct/complete solution.

But even when/if we get approach (b) implemented, having the
framebuffer notifier on the pre_reboot list is still too late with the
default of panic_notifier_level = 2.  The kdump path will reset the
VMbus connection and then the framebuffer notifier won't work.

> 
> In any case, I guess we should avoid workarounds if possible and do the
> things the best way we can, to encompass all (or almost all) the
> possible scenarios and don't force things on users (like enforcing panic
> notifier level 4 for Hyper-V or something like this...)
> 
> More feedback from you / Hyper-V folks is pretty welcome about this.
> 
> 
> >
> >> [...]
> > The "Fixes:" tags imply that these changes should be backported to older
> > longterm kernel versions, which I don't think is the case.  There is a
> > dependency on Patch 14 of your series where PANIC_NOTIFIER is
> > introduced.
> >
> 
> Oh, this was more related with archeology of the kernel. When I'm
> investigating stuff, I really want to understand why code was added and
> that usually require some time git blaming stuff, so having that pronto
> in the commit message is a bonus.
> 
> But of course we don't need to use the Fixes tag for that, easy to only
> mention it in the text. A secondary benefit by using this tag is to
> indicate this is a _real fix_ to some code, and not an improvement, but
> as you say, I agree we shouldn't backport it to previous releases having
> or not the Fixes tag (AFAIK it's not mandatory to backport stuff with
> Fixes tag).
> 
> 
> >> [...]
> >> + * intrincated is the relation of this notifier with Hyper-V framebuffer
> >
> > s/intrincated/intricate/
> 
> Thanks, fixed in V2!
> 
> 
> >
> >> [...]
> >> +static int hv_panic_vmbus_unload(struct notifier_block *nb, unsigned long val,
> >>  			      void *args)
> >> +{
> >> +	if (!kexec_crash_loaded())
> >
> > I'm not clear on the purpose of this condition.  I think it means
> > we will skip the vmbus_initiate_unload() if a panic occurs in the
> > kdump kernel.  Is there a reason a panic in the kdump kernel
> > should be treated differently?  Or am I misunderstanding?
> 
> This is really related with the point discussed in the top of this
> response - I assumed both ARM64/x86_64 would behave the same and
> disconnect the vmbus through the custom crash handler when kdump is set,
> so worth skipping it here in the notifier. But that's not true for ARM64
> as you pointed, so this guard against kexec is really part of the
> decision/discussion on what to do with ARM64 heh

But note that vmbus_initiate_unload() already has a guard built-in.
If the intent of this test is just as a guard against running twice,
then it isn't needed.

> 
> Cheers!

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
