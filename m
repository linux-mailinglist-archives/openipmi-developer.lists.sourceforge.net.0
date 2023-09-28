Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FDE7B22AF
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Sep 2023 18:47:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qluAK-0004yA-Ih;
	Thu, 28 Sep 2023 16:47:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.leroy@csgroup.eu>) id 1qluAJ-0004xw-Ec
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 16:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4SjRlaws87DqdJ200wFIeiR1GUjiiRFF0xFqChJ2j08=; b=Aiq78WbT+WcZjUBDsU4sJ+5Lm0
 hnMiOg6/EG6854LMFn3wiITRcxlatz5gonBNOC+WFsNdOlyJIN49nkWbL52Z9Zr7eJJaeWStCIANJ
 fCf5tOBZmY+K5Vxjql6p9Y06lBp1N+xEaYkSoecAXPjSWvlkEZZHfpM4eJfg9Y/c2iXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4SjRlaws87DqdJ200wFIeiR1GUjiiRFF0xFqChJ2j08=; b=E63q+uLc1+yEHIw/Oz5gXBRaT0
 /2ajgyX8haW2Gh37I3x28tL7wES1YEWnOl9DOZ0GXiz0ESfroGt8t7g/YMZjKjdThcI1NP/ZxdOEu
 U0RZ8tSXs5wL30kBGPpCYyLLxEbn0i7MsQcqOPC27gax2xoReXACz/jIjMtpZYxzZ3rg=;
Received: from mail-pr2fra01on2088.outbound.protection.outlook.com
 ([40.107.12.88] helo=FRA01-PR2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qluAB-00AKqO-03 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 16:47:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y6dkVbQVXA0XHTlGoW2huBJY4KLX++5OSOnFj65LLvUODPgYec6ORCtTJbBXDv6TLPOVDy3DlwYrN6WnjHFdWVkAII+fHGYA+PYYFo/oPP2zjoYIC2MA1ctijWoCFoYuIqYv2vtvzj8QLV2t0YU2rw7nPtRIxyOQAwU2W81EXNsS96CjcgI4JmRCh5HJM2oBrNvSQcc05lVTJ0F8cmfTsv+YNoIazqDvLGmoYXu51j6cFcXeaz+bapsjBXXi9/bNphJb7BdzNWIB35RYn/VHISfojIVLY7DrXcVDUqM/G92Npy/Wmv0c8YAVWarR8d4TZ8CL7FJcxQFjzxXjWx0wTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4SjRlaws87DqdJ200wFIeiR1GUjiiRFF0xFqChJ2j08=;
 b=BFes7LtD3sS7pdlVaR4LKyMLTXY/i/yKIUhpWhyHYdvYKbpS94rPus5Pk2yYNqHO7FBfcJY6D+oW3Vhg24drkx6m2miBJkq6DDBUQ468D82A7k7yO1DXh6QuESsAz9fi+HO07OevTD1gQ+mXZP4wOlR624PToA2XAlA5Lk2BFIZZWuLuKNOP8ZRozn5cP0/rt9NAxAhzx1MffHO8khk5vA0SlOZK3xLSEsNzeY9iajZ5Zl6X96eC1pa3qy6fN3eQ53nTNkDqpXkidYbMEpo2ne+fxFOgLNweYjnNHHN22au/HiVcZztGaCPZQK+UUPd+YWo6GZ8612jik6qSRSYKFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csgroup.eu; dmarc=pass action=none header.from=csgroup.eu;
 dkim=pass header.d=csgroup.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=csgroup.eu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4SjRlaws87DqdJ200wFIeiR1GUjiiRFF0xFqChJ2j08=;
 b=gFvE+6LdFEQ+6FvtgXXultBniDEkWH3BCKnXc05koFTeZz+CoWFXqW1FDgHQNrCq6lOYZlJDjBjWhFLvqmmZ/FNYzqY4bUWTjHde9NerqHG5rT7aJz7W71ZPtT3D7uyzeMC6y9vBUzwFG9s1oBA4Bnmlf0HLxwJbrbChbcqMR87JFlUCRXJh0TeJGVT4m2eYcKGBB9mMt4OOrwywCbhX8WNzzKLeNoCrNWfSQ9y98U5jn/1Hdk/HTQ1wElaAPKHzdTZ/7GY3YuJSToyLBTjJaq5a7JqRZuFUZpfEX3dmMRZSZUJhzu8ehNhgBzxmffjt0/aXjV3XNKnIXvAqYb6VMg==
Received: from MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:31::15)
 by MRZP264MB2237.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.22; Thu, 28 Sep
 2023 16:31:30 +0000
Received: from MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM
 ([fe80::27df:697c:bd7d:774f]) by MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM
 ([fe80::27df:697c:bd7d:774f%6]) with mapi id 15.20.6838.024; Thu, 28 Sep 2023
 16:31:30 +0000
To: "j.granados@samsung.com" <j.granados@samsung.com>, Luis Chamberlain
 <mcgrof@kernel.org>, "willy@infradead.org" <willy@infradead.org>,
 "josh@joshtriplett.org" <josh@joshtriplett.org>, Kees Cook
 <keescook@chromium.org>, Phillip Potter <phil@philpotter.co.uk>, Clemens
 Ladisch <clemens@ladisch.de>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko
 <oleksandr_tyshchenko@epam.com>, Jiri Slaby <jirislaby@kernel.org>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, Doug Gilbert <dgilbert@interlog.com>, Sudip
 Mukherjee <sudipm.mukherjee@gmail.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon
 Romanovsky <leon@kernel.org>, Corey Minyard <minyard@acm.org>, Theodore Ts'o
 <tytso@mit.edu>, "Jason A. Donenfeld" <Jason@zx2c4.com>, David Ahern
 <dsahern@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Robin Holt <robinmholt@gmail.com>, Steve Wahl
 <steve.wahl@hpe.com>, Russ Weight <russell.h.weight@intel.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Song Liu <song@kernel.org>, "K. Y. Srinivasan"
 <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, Wei Liu
 <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Thread-Topic: [PATCH 00/15] sysctl: Remove sentinel elements from drivers
Thread-Index: AQHZ8g7L9GtM3GaC7kiSbpIXyc5PdrAwblgA
Date: Thu, 28 Sep 2023 16:31:30 +0000
Message-ID: <5fadd85e-f2d7-878c-b709-3523e89dd93a@csgroup.eu>
References: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-0-e59120fca9f9@samsung.com>
In-Reply-To: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-0-e59120fca9f9@samsung.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csgroup.eu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MRZP264MB2988:EE_|MRZP264MB2237:EE_
x-ms-office365-filtering-correlation-id: 3de82bfd-26a4-45bf-2044-08dbc0405ef1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +YxBgPyUZkGAKsVZwpQf4fqi7yjCvV8+ufd0EicVNF/eyKVKZvi7Lwl1xFjJiLukNwLJS9t0HZJYCQ2+03C+up7ZEIz5ymZe+kHtAi6EQ0kzcqOJJwdxVHG5mVgPRkB3Ou1SJNQbYMnekdz1btKufm7jAxLdrmJ6KLsv68LZBnvEJXOOSADxspXlioHRILEWYFsdcKQvNWCype4OMm8+Z9ZXxQcYnvZOaOza8Q2gehN0T6O9L381mBmyJgxVvrd28kMbrso5/sEVP1uG5GztbCmtf2Ucrv/DGEjpG5VT+f9ewugmbseUe6Dp60ikL3vWUdJkpqBQ6Kw+ogPeBy3R0/0NzHRoPrB55a0ycvVzdBYlQSfhjJ9FV3RkIeKwsy3r0M4iDz2UCXX8RogSwQk51gxrIsQ02VXNZUnlJ7jzcWsElNsx+anWgeyRrw/XS2hnKLpWtU6dpelTpZZhT4xjPEwO+It8uY6TVveBp5KOahgUb5dl6bvmMkxPGgkjTK3EClIc3ryRXGQfKhfxjWG4vMFodswnsM+72kiPDkdNiG93ttFnoakaobIAzfh0Fk59b5zzVu0DXfev4PFpjwBUxU0VoGes3xV2OOjmcdLx0rY2AEAbvTZO9sO1PFeHS9qW2QhKJsBqult1vTqXkRWXrhOjEyLH/yXX/C506vETr2iENPyKR78ZjiGXoIr+RUNA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(376002)(346002)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(7416002)(7366002)(30864003)(2906002)(31686004)(7406005)(41300700001)(5660300002)(8936002)(8676002)(66476007)(44832011)(66446008)(4326008)(66556008)(66946007)(91956017)(110136005)(76116006)(6486002)(966005)(478600001)(45080400002)(71200400001)(6512007)(6506007)(26005)(2616005)(66574015)(54906003)(64756008)(316002)(31696002)(36756003)(38100700002)(38070700005)(86362001)(122000001)(83380400001)(921005)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?REYzSk1GdXRtaEZVdjFPZHdUZ3ByNTNDVTBUVm5qbWhIa29qTHpxYkMzQm82?=
 =?utf-8?B?c1BBeUVia3NzWi9ReUJJSjgzajY2dG82alZzWDNwbkVGejltV0RKclJwVzZy?=
 =?utf-8?B?SEljN3R6MXJxRUxuZk8vRmIvRk52T0pzTDZ2RDNpMW5Bb2plRC9KaDlPblhK?=
 =?utf-8?B?YVJ2bGhzeVhUZjc1dXpKUzdRTGJHZVZaV0FHWDk0aDFvVmNjUlh3ek5TaUlY?=
 =?utf-8?B?OXdsdU9vRjRsNkpkUy9tQ3UyV3pmQ0NELy9UUjNiaFdvaFA1VmQ4U1ZFdlc4?=
 =?utf-8?B?YWFHcS9EbXFHVlIrSGdJaTlwdEROR0pLV1BHQmxwWGpkZC9mMHlLYllKb0pP?=
 =?utf-8?B?Rkg4TzNzQWRsNU5CNDRBdEVSZy9rV09RV1E1aGFzUi9RcXVMbnFLZmkrS0dK?=
 =?utf-8?B?UHh3cTVSMXhtNE14N1FPbnQxT1p4OUNXU1JsZ2Q4SDh4L0FUK2VrVkw0WkRH?=
 =?utf-8?B?RjBEWEdwY2UyTk4ycjBwTFV0UWdPTWh3L1pjZXU4RzNNMmVpZlVmTTVrWVlY?=
 =?utf-8?B?aDhzeWgwbjlmZHRNM3h6RktjbjZ0ajJaWGV1RzNqWDJCVUw0bm1uTU8vSDFl?=
 =?utf-8?B?T2hFcWpKWEF0ZmZlMmQ4Tk9BRVh0Zjg0Vm5jRUJkd2IzY1cxWjJlY0dRV0cz?=
 =?utf-8?B?dVRyaFB6NDlNUzJlYk1DUnNyMmg2K1J4bUc0d3ZXOURqWVhxNDBnNlorN2M1?=
 =?utf-8?B?NUF4ZHBCQnFQMGZUNVlkd2ZsN3hWWUlJTnVyV0dUQlpuWmJsQ3d0U0hKREc1?=
 =?utf-8?B?THNLL3NpYUlnbWNyQTdmeU5nTDM0UEcrRWlPekZ2Mmk3NENiMFgrb2U0bkw5?=
 =?utf-8?B?ZWU1MFRUZnFCZkJ3alNJS0swSUVkTWRuOTVrZ2h2bHFuUVFQbUNyWC9KMHBx?=
 =?utf-8?B?U3g2UDVsTkpYR0hBakUvNnVyeTFRM0g1OVVZd2d0SkFPU3IvaDdGODkrWVZV?=
 =?utf-8?B?eXVOMjgzcE5ybkN5R3pYK25zYlQ1TFFvRTkyMVpBcG9JbzYrWTJDQklxcFR0?=
 =?utf-8?B?ZnJkYnpKQytqamZzdk05ZXU5eS9KeEhodUIydjdZdW0rSExPU25BcC9WNUFI?=
 =?utf-8?B?dktMQUw5YWx0Z0FiYWc5WGhCT3orRmE3bDgzb2wvWEpTUFc4bm9COENoV0dm?=
 =?utf-8?B?TlpKaFFOaGlQbHE2eCs3dGM0Wk0ycjdmelRWY2VLTng4MjNvUk40SVNndlJE?=
 =?utf-8?B?Y1ZkZjNNdUdzQnc3Qm5OMy8rZFh6Z1pXTy9ScERzTEUzMXJpSEJjZ3VidzdW?=
 =?utf-8?B?aU16ZUprcDcyNGNjUXVUWHJ5R0JDUWRmV2hId2VRVy94Q2VScjRaV3I5bEtV?=
 =?utf-8?B?OC92RzI4ZWtXRmpXZ0Zqc2NpdElYQmxBTWVMNTVhUmNSV21YcE9tVlFHRm1J?=
 =?utf-8?B?NmhFSFlNa2hrN0RLTWZ5eU1heWY0SjBWQUpsZDFOWDkxTVN1bnJ5UTFPWnFx?=
 =?utf-8?B?djVRZnFRY25DdEk4MTluOFlmcWlrK1hCaUwyODFITnVIZFhucDhRbGNKdDBp?=
 =?utf-8?B?TjltNlMwdExjd281SCtUYlNiRzU5NC9GWnAwalRqNS9nNzZ4MkxRZFBlQ2l1?=
 =?utf-8?B?Wk9NZUdOZ2hiMVdlMVNmZ3h2N1NMNE5ReHhkMDcrSnFIOFdDNVNROFcwT1BL?=
 =?utf-8?B?ZWV3UXFOaUFTLzd2Y3o5TUZibTkrbXRXWjdqN2cyWm1KWFdWRlVoU20zSmRr?=
 =?utf-8?B?VTVUY0F3R1lSV0tnWWxXOURYOUVnQnlvdE1CdmxUQ0UrZ1ZzQ3FackIrdDNx?=
 =?utf-8?B?OFdtMWlDRE13aGc5eWhhMjlsQW5IN002cG92TUdocmxVMXZhWkxtNHR2VG5Z?=
 =?utf-8?B?dnJURkNrbThMV1A1Z3Eyamt6aGxmbXBPNTdaZUZFWm4zRWFiejU2V3Ryblpz?=
 =?utf-8?B?aWhUZkFlVzdIbkRURCswZjIwYUpvTWYwZHlHRTlVeU5FenZSUTRhdm43MU1n?=
 =?utf-8?B?a1V5eG5WcTc3cm85bGlJaFh5V29wTXlkTGxYWFFMTWZXbk9WM0V1Zld0M3lh?=
 =?utf-8?B?VGdkZHEreEFwVC9TOEUxenpLWk5WdmZCZFR6RUNMSDI4S3pVQ3VUQjl4Qzli?=
 =?utf-8?B?Mzh5VmRMMnNWOVAvUmpIZHFaWWRQMlphaFlybmg1YXJGRXVVS2hjb3JOdndH?=
 =?utf-8?B?cDdpRCtpSUxFYUpva2NVSmIzczRyZ0xQSnBXUHptWUZWUEJCTTZDWmFIRmdM?=
 =?utf-8?B?L3c9PQ==?=
Content-ID: <0AC6851D6D9D6844B0532F20FDDDF28E@FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: csgroup.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3de82bfd-26a4-45bf-2044-08dbc0405ef1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2023 16:31:30.5775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9914def7-b676-4fda-8815-5d49fb3b45c8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZtUifeZBrTrMAeQAS7Cu00e9Wzne2mTj5e/NFGgmSVJyzIzaai6kIFB5AqByLmF/xyFxQhChwd9F5Hyxpvxc2xNChxLlS7bEu51m4c2IHiY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2237
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 28/09/2023 à 15:21, Joel Granados via B4 Relay a écrit :
    > From: Joel Granados <j.granados@samsung.com> Automatic test fails on powerpc,
    see https://patchwork.ozlabs.org/project/linuxppc-dev/patch/20230928-jag-sysctl_remove_empty_elem_drivers-v1-15-e59120fca9f9@samsung.com/
    
 
 Content analysis details:   (-1.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.107.12.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.12.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qluAB-00AKqO-03
Subject: Re: [Openipmi-developer] [PATCH 00/15] sysctl: Remove sentinel
 elements from drivers
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
From: Christophe Leroy via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

DQoNCkxlIDI4LzA5LzIwMjMgw6AgMTU6MjEsIEpvZWwgR3JhbmFkb3MgdmlhIEI0IFJlbGF5IGEg
w6ljcml0wqA6DQo+IEZyb206IEpvZWwgR3JhbmFkb3MgPGouZ3JhbmFkb3NAc2Ftc3VuZy5jb20+
DQoNCkF1dG9tYXRpYyB0ZXN0IGZhaWxzIG9uIHBvd2VycGMsIHNlZSANCmh0dHBzOi8vcGF0Y2h3
b3JrLm96bGFicy5vcmcvcHJvamVjdC9saW51eHBwYy1kZXYvcGF0Y2gvMjAyMzA5MjgtamFnLXN5
c2N0bF9yZW1vdmVfZW1wdHlfZWxlbV9kcml2ZXJzLXYxLTE1LWU1OTEyMGZjYTlmOUBzYW1zdW5n
LmNvbS8NCg0KS2VybmVsIGF0dGVtcHRlZCB0byByZWFkIHVzZXIgcGFnZSAoMWExMTEzMTYpIC0g
ZXhwbG9pdCBhdHRlbXB0PyAodWlkOiAwKQ0KQlVHOiBVbmFibGUgdG8gaGFuZGxlIGtlcm5lbCBk
YXRhIGFjY2VzcyBvbiByZWFkIGF0IDB4MWExMTEzMTYNCkZhdWx0aW5nIGluc3RydWN0aW9uIGFk
ZHJlc3M6IDB4YzA1NDUzMzgNCk9vcHM6IEtlcm5lbCBhY2Nlc3Mgb2YgYmFkIGFyZWEsIHNpZzog
MTEgWyMxXQ0KQkUgUEFHRV9TSVpFPTRLIFBvd2VyUEMgNDR4IFBsYXRmb3JtDQpNb2R1bGVzIGxp
bmtlZCBpbjoNCkNQVTogMCBQSUQ6IDEgQ29tbTogc3dhcHBlciBOb3QgdGFpbnRlZCA2LjUuMC1y
YzYtZ2RlZjEzMjc3YmFjYiAjMQ0KSGFyZHdhcmUgbmFtZTogYW1jYyxiYW1ib28gNDQwR1IgUmV2
LiBCIDB4NDIyMjE4ZDMgUG93ZXJQQyA0NHggUGxhdGZvcm0NCk5JUDogIGMwNTQ1MzM4IExSOiBj
MDU0ODQ2OCBDVFI6IGZmZmZmZmZmDQpSRUdTOiBjMDg0ZmFlMCBUUkFQOiAwMzAwICAgTm90IHRh
aW50ZWQgICg2LjUuMC1yYzYtZ2RlZjEzMjc3YmFjYikNCk1TUjogIDAwMDIxMDAwIDxDRSxNRT4g
IENSOiA4NDAwNDI4OCAgWEVSOiAwMDAwMDAwMA0KREVBUjogMWExMTEzMTYgRVNSOiAwMDAwMDAw
MA0KR1BSMDA6IGMwNTQ4NDY4IGMwODRmYmQwIGMwODg4MDAwIGMwODRmYzk5IDAwMDAwMDAwIGMw
ODRmYzdjIDFhMTEwMzE2IA0KMDAwYWZmZmYNCkdQUjA4OiBmZmZmZmZmZiBjMDg0ZmQxOCAxYTEx
MTMxNiAwNGZmZmZmZiAyMjAwMDI4MiAwMDAwMDAwMCBjMDAwMjdjMCANCjAwMDAwMDAwDQpHUFIx
NjogMDAwMDAwMDAgMDAwMDAwMDAgYzAwNDAwMDAgYzAwM2Q1NDQgMDAwMDAwMDEgYzAwM2ViMmMg
MDk2MDIzZDQgDQowMDAwMDAwMA0KR1BSMjQ6IGMwNjM2NTAyIGMwNjM2NTAyIGMwODRmYzc0IGMw
NTg4NTEwIGMwODRmYzY4IGMwODRmYzdjIGMwODRmYzk5IA0KMDAwMDAwMDINCk5JUCBbYzA1NDUz
MzhdIHN0cmluZysweDc4LzB4MTQ4DQpMUiBbYzA1NDg0NjhdIHZzbnByaW50ZisweDNkOC8weDgy
NA0KQ2FsbCBUcmFjZToNCltjMDg0ZmJkMF0gW2MwODRmYzdjXSAweGMwODRmYzdjICh1bnJlbGlh
YmxlKQ0KW2MwODRmYmUwXSBbYzA1NDg0NjhdIHZzbnByaW50ZisweDNkOC8weDgyNA0KW2MwODRm
YzMwXSBbYzAwNzJkZWNdIHZwcmludGtfc3RvcmUrMHgxN2MvMHg0YzgNCltjMDg0ZmNjMF0gW2Mw
MDczMjJjXSB2cHJpbnRrX2VtaXQrMHhmNC8weDJhMA0KW2MwODRmZDAwXSBbYzAwNzNkMDRdIF9w
cmludGsrMHg2MC8weDg4DQpbYzA4NGZkNDBdIFtjMDFhYjYzY10gc3lzY3RsX2VycisweDc4LzB4
YTQNCltjMDg0ZmQ4MF0gW2MwMWFiNDA0XSBfX3JlZ2lzdGVyX3N5c2N0bF90YWJsZSsweDZhMC8w
eDZjNA0KW2MwODRmZGUwXSBbYzA2YTU4NWNdIF9fcmVnaXN0ZXJfc3lzY3RsX2luaXQrMHgzMC8w
eDc4DQpbYzA4NGZlMDBdIFtjMDZhOGNjOF0gdHR5X2luaXQrMHg0NC8weDE2OA0KW2MwODRmZTMw
XSBbYzAwMDIzYzRdIGRvX29uZV9pbml0Y2FsbCsweDY0LzB4MmEwDQpbYzA4NGZlYTBdIFtjMDY4
ZjA2MF0ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxODQvMHgyMzANCltjMDg0ZmVlMF0gW2MwMDAy
N2U0XSBrZXJuZWxfaW5pdCsweDI0LzB4MTI0DQpbYzA4NGZmMDBdIFtjMDAwZjFmY10gcmV0X2Zy
b21fa2VybmVsX3VzZXJfdGhyZWFkKzB4MTQvMHgxYw0KLS0tIGludGVycnVwdDogMCBhdCAweDAN
Ck5JUDogIDAwMDAwMDAwIExSOiAwMDAwMDAwMCBDVFI6IDAwMDAwMDAwDQpSRUdTOiBjMDg0ZmYx
MCBUUkFQOiAwMDAwICAgTm90IHRhaW50ZWQgICg2LjUuMC1yYzYtZ2RlZjEzMjc3YmFjYikNCk1T
UjogIDAwMDAwMDAwIDw+ICBDUjogMDAwMDAwMDAgIFhFUjogMDAwMDAwMDANCg0KR1BSMDA6IDAw
MDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAw
MDAwIA0KMDAwMDAwMDANCkdQUjA4OiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAw
MCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCANCjAwMDAwMDAwDQpHUFIxNjogMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgDQow
MDAwMDAwMA0KR1BSMjQ6IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAw
MDAwIDAwMDAwMDAwIDAwMDAwMDAwIA0KMDAwMDAwMDANCk5JUCBbMDAwMDAwMDBdIDB4MA0KTFIg
WzAwMDAwMDAwXSAweDANCi0tLSBpbnRlcnJ1cHQ6IDANCkNvZGU6IDkxNjEwMDA4IDkwZTEwMDBj
IDRiZmZkMGI1IDgwMDEwMDE0IDM4MjEwMDEwIDdjMDgwM2E2IDRlODAwMDIwIA0KNDA5ZDAwMDgg
OTkyMzAwMDAgMzg2MzAwMDEgMzg4NDAwMDEgNDI0MGZmZDAgPDdkMmEyMGFlPiA3Zjg1MTg0MCAN
CjU1MjgwNjNlIDJjMDgwMDAwDQotLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0N
Cg0Kbm90ZTogc3dhcHBlclsxXSBleGl0ZWQgd2l0aCBpcnFzIGRpc2FibGVkDQpLZXJuZWwgcGFu
aWMgLSBub3Qgc3luY2luZzogQXR0ZW1wdGVkIHRvIGtpbGwgaW5pdCEgZXhpdGNvZGU9MHgwMDAw
MDAwYg0KDQoNCj4gDQo+IFdoYXQ/DQo+IFRoZXNlIGNvbW1pdHMgcmVtb3ZlIHRoZSBzZW50aW5l
bCBlbGVtZW50IChsYXN0IGVtcHR5IGVsZW1lbnQpIGZyb20gdGhlDQo+IHN5c2N0bCBhcnJheXMg
b2YgYWxsIHRoZSBmaWxlcyB1bmRlciB0aGUgImRyaXZlcnMvIiBkaXJlY3RvcnkgdGhhdCB1c2Ug
YQ0KPiBzeXNjdGwgYXJyYXkgZm9yIHJlZ2lzdHJhdGlvbi4gVGhlIG1lcmdpbmcgb2YgdGhlIHBy
ZXBhcmF0aW9uIHBhdGNoZXMNCj4gKGluIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9aTzVZ
eDVKRm9nR2klMkZjQm9AYm9tYmFkaWwuaW5mcmFkZWFkLm9yZy8pDQo+IHRvIG1haW5saW5lIGFs
bG93cyB1cyB0byBqdXN0IHJlbW92ZSBzZW50aW5lbCBlbGVtZW50cyB3aXRob3V0IGNoYW5naW5n
DQo+IGJlaGF2aW9yIChtb3JlIGluZm8gaGVyZSBbMV0pLg0KPiANCj4gVGhlc2UgY29tbWl0cyBh
cmUgcGFydCBvZiBhIGJpZ2dlciBzZXQgKGhlcmUNCj4gaHR0cHM6Ly9naXRodWIuY29tL0pvZWxn
cmFuYWRvcy9saW51eC90cmVlL3RhZy9zeXNjdGxfcmVtb3ZlX2VtcHR5X2VsZW1fVjQpDQo+IHRo
YXQgcmVtb3ZlIHRoZSBjdGxfdGFibGUgc2VudGluZWwuIE1ha2UgdGhlIHJldmlldyBwcm9jZXNz
IGVhc2llciBieQ0KPiBjaHVua2luZyB0aGUgY29tbWl0cyBpbnRvIG1hbmFnZWFibGUgcGllY2Vz
LiBFYWNoIGNodW5rIGNhbiBiZSByZXZpZXdlZA0KPiBzZXBhcmF0ZWx5IHdpdGhvdXQgbm9pc2Ug
ZnJvbSBwYXJhbGxlbCBzZXRzLg0KPiANCj4gTm93IHRoYXQgdGhlIGFyY2hpdGVjdHVyZSBjaHVu
ayBoYXMgYmVlbiBtb3N0bHkgcmV2aWV3ZWQgWzZdLCB3ZSBzZW5kDQo+IHRoZSAiZHJpdmVycy8i
IGRpcmVjdG9yeS4gT25jZSB0aGlzIG9uZSBpcyBkb25lLCBpdCB3aWxsIGJlIGZvbGx3ZWQgYnkN
Cj4gImZzLyoiLCAia2VybmVsLyoiLCAibmV0LyoiIGFuZCBtaXNjZWxsYW5lb3VzLiBUaGUgZmlu
YWwgc2V0IHdpbGwgcmVtb3ZlDQo+IHRoZSB1bm5lZWRlZCBjaGVjayBmb3IgLT5wcm9jbmFtZSA9
PSBOVUxMLg0KPiANCj4gV2h5Pw0KPiBCeSByZW1vdmluZyB0aGUgc3lzY3RsIHNlbnRpbmVsIGVs
ZW1lbnRzIHdlIGF2b2lkIGtlcm5lbCBibG9hdCBhcw0KPiBjdGxfdGFibGUgYXJyYXlzIGdldCBt
b3ZlZCBvdXQgb2Yga2VybmVsL3N5c2N0bC5jIGludG8gdGhlaXIgb3duDQo+IHJlc3BlY3RpdmUg
c3Vic3lzdGVtcy4gVGhpcyBtb3ZlIHdhcyBzdGFydGVkIGxvbmcgYWdvIHRvIGF2b2lkIG1lcmdl
DQo+IGNvbmZsaWN0czsgdGhlIHNlbnRpbmVsIHJlbW92YWwgYml0IGNhbWUgYWZ0ZXIgTWF0aGV3
IFdpbGNveCBzdWdnZXN0ZWQNCj4gaXQgdG8gYXZvaWQgYmxvYXRpbmcgdGhlIGtlcm5lbCBieSBv
bmUgZWxlbWVudCBhcyBhcnJheXMgbW92ZWQgb3V0LiBUaGlzDQo+IHBhdGNoc2V0IHdpbGwgcmVk
dWNlIHRoZSBvdmVyYWxsIGJ1aWxkIHRpbWUgc2l6ZSBvZiB0aGUga2VybmVsIGFuZCBydW4NCj4g
dGltZSBtZW1vcnkgYmxvYXQgYnkgYWJvdXQgfjY0IGJ5dGVzIHBlciBkZWNsYXJlZCBjdGxfdGFi
bGUgYXJyYXkuIEkNCj4gaGF2ZSBjb25zb2xpZGF0ZWQgc29tZSBsaW5rcyB0aGF0IHNoZWQgbGln
aHQgb24gdGhlIGhpc3Rvcnkgb2YgdGhpcw0KPiBlZmZvcnQgWzJdLg0KPiANCj4gVGVzdGluZzoN
Cj4gKiBSYW4gc3lzY3RsIHNlbGZ0ZXN0cyAoLi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9zeXNj
dGwvc3lzY3RsLnNoKQ0KPiAqIFJhbiB0aGlzIHRocm91Z2ggMC1kYXkgd2l0aCBubyBlcnJvcnMg
b3Igd2FybmluZ3MNCj4gDQo+IFNpemUgc2F2aW5nIGFmdGVyIHJlbW92aW5nIGFsbCBzZW50aW5l
bHM6DQo+ICAgIFRoZXNlIGFyZSB0aGUgYnl0ZXMgdGhhdCB3ZSBzYXZlIGFmdGVyIHJlbW92aW5n
IGFsbCB0aGUgc2VudGluZWxzDQo+ICAgICh0aGlzIHBsdXMgYWxsIHRoZSBvdGhlciBjaHVua3Mp
LiBJIGluY2x1ZGVkIHRoZW0gdG8gZ2V0IGFuIGlkZWEgb2YNCj4gICAgaG93IG11Y2ggbWVtb3J5
IHdlIGFyZSB0YWxraW5nIGFib3V0Lg0KPiAgICAgICogYmxvYXQtby1tZXRlcjoNCj4gICAgICAg
ICAgLSBUaGUgInllc2FsbCIgY29uZmlndXJhdGlvbiByZXN1bHRzIHNhdmUgOTE1OCBieXRlcw0K
PiAgICAgICAgICAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDYyMTA5MTAwMC40
MjQ4NDMtMS1qLmdyYW5hZG9zQHNhbXN1bmcuY29tLw0KPiAgICAgICAgICAtIFRoZSAidGlueSIg
Y29uZmlnICsgQ09ORklHX1NZU0NUTCBzYXZlIDEyMTUgYnl0ZXMNCj4gICAgICAgICAgICBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzA4MDkxMDUwMDYuMTE5ODE2NS0xLWouZ3JhbmFk
b3NAc2Ftc3VuZy5jb20vDQo+ICAgICAgKiBtZW1vcnkgdXNhZ2U6DQo+ICAgICAgICAgIEluIG1l
bW9yeSBzYXZpbmdzIGFyZSBtZWFzdXJlZCB0byBiZSA3Mjk2IGJ5dGVzLiAoaGVyZSBpcyBob3cg
dG8NCj4gICAgICAgICAgbWVhc3VyZSBbM10pDQo+IA0KPiBTaXplIHNhdmluZyBhZnRlciB0aGlz
IHBhdGNoc2V0Og0KPiAgICAgICogYmxvYXQtby1tZXRlcg0KPiAgICAgICAgICAtIFRoZSAieWVz
YWxsIiBjb25maWcgc2F2ZXMgMjQzMiBieXRlcyBbNF0NCj4gICAgICAgICAgLSBUaGUgInRpbnki
IGNvbmZpZyBzYXZlcyA2NCBieXRlcyBbNV0NCj4gICAgICAqIG1lbW9yeSB1c2FnZToNCj4gICAg
ICAgICAgSW4gdGhpcyBjYXNlIHRoZXJlIHdlcmUgbm8gYnl0ZXMgc2F2ZWQgYmVjYXVzZSBJIGRv
IG5vdCBoYXZlIGFueQ0KPiAgICAgICAgICBvZiB0aGUgZHJpdmVycyBpbiB0aGUgcGF0Y2guIFRv
IG1lYXN1cmUgaXQgY29tbWVudCB0aGUgcHJpbnRrIGluDQo+ICAgICAgICAgIGBuZXdfZGlyYCBh
bmQgdW5jb21tZW50IHRoZSBpZiBjb25kaXRpb25hbCBpbiBgbmV3X2xpbmtzYCBbM10uDQo+IA0K
PiBDb21tZW50cy9mZWVkYmFjayBncmVhdGx5IGFwcHJlY2lhdGVkDQo+IA0KPiBCZXN0DQo+IEpv
ZWwNCj4gDQo+IFsxXQ0KPiBXZSBhcmUgYWJsZSB0byByZW1vdmUgYSBzZW50aW5lbCB0YWJsZSB3
aXRob3V0IGJlaGF2aW9yYWwgY2hhbmdlIGJ5DQo+IGludHJvZHVjaW5nIGEgdGFibGVfc2l6ZSBh
cmd1bWVudCBpbiB0aGUgc2FtZSBwbGFjZSB3aGVyZSBwcm9jbmFtZSBpcw0KPiBjaGVja2VkIGZv
ciBOVUxMLiBUaGUgaWRlYSBpcyBmb3IgaXQgdG8ga2VlcCBzdG9wcGluZyB3aGVuIGl0IGhpdHMN
Cj4gLT5wcm9jbmFtZSA9PSBOVUxMLCB3aGlsZSB0aGUgc2VudGluZWwgaXMgc3RpbGwgcHJlc2Vu
dC4gQW5kIHdoZW4gdGhlDQo+IHNlbnRpbmVsIGlzIHJlbW92ZWQsIGl0IHdpbGwgc3RvcCBvbiB0
aGUgdGFibGVfc2l6ZS4gWW91IGNhbiBnbyB0bw0KPiAoaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjMwODA5MTA1MDA2LjExOTgxNjUtMS1qLmdyYW5hZG9zQHNhbXN1bmcuY29tLykNCj4g
Zm9yIG1vcmUgaW5mb3JtYXRpb24uDQo+IA0KPiBbMl0NCj4gTGlua3MgUmVsYXRlZCB0byB0aGUg
Y3RsX3RhYmxlIHNlbnRpbmVsIHJlbW92YWw6DQo+ICogR29vZCBzdW1tYXJ5IGZyb20gTHVpcyBz
ZW50IHdpdGggdGhlICJwdWxsIHJlcXVlc3QiIGZvciB0aGUNCj4gICAgcHJlcGFyYXRpb24gcGF0
Y2hlcy4NCj4gICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL1pPNVl4NUpGb2dHaSUyRmNC
b0Bib21iYWRpbC5pbmZyYWRlYWQub3JnLw0KPiAqIEFub3RoZXIgdmVyeSBnb29kIHN1bW1hcnkg
ZnJvbSBMdWlzLg0KPiAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvWk1GaXpLRmtWeFVG
dFNxYUBib21iYWRpbC5pbmZyYWRlYWQub3JnLw0KPiAqIFRoaXMgaXMgYSBwYXRjaCBzZXQgdGhh
dCByZXBsYWNlcyByZWdpc3Rlcl9zeXNjdGxfdGFibGUgd2l0aCByZWdpc3Rlcl9zeXNjdGwNCj4g
ICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMwMzAyMjA0NjEyLjc4MjM4Ny0xLW1j
Z3JvZkBrZXJuZWwub3JnLw0KPiAqIFBhdGNoIHNldCB0byBkZXByZWNhdGUgcmVnaXN0ZXJfc3lz
Y3RsX3BhdGhzKCkNCj4gICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMwMzAyMjAy
ODI2Ljc3NjI4Ni0xLW1jZ3JvZkBrZXJuZWwub3JnLw0KPiAqIEhlcmUgdGhlcmUgaXMgYW4gZXhw
bGljaXQgZXhwZWN0YXRpb24gZm9yIHRoZSByZW1vdmFsIG9mIHRoZSBzZW50aW5lbCBlbGVtZW50
Lg0KPiAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzAzMjExMzA5MDguNjk3Mi0x
LWZyYW5rLmxpQHZpdm8uY29tDQo+ICogVGhlICJBUlJBWV9TSVpFIiBhcHByb2FjaCB3YXMgbWVu
dGlvbmVkIChwcm9wb3NlZD8pIGluIHRoaXMgdGhyZWFkDQo+ICAgIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDIyMDIyMDA2MDYyNi4xNTg4NS0xLXRhbmdtZW5nQHVuaW9udGVjaC5jb20N
Cj4gDQo+IFszXQ0KPiBUbyBtZWFzdXJlIHRoZSBpbiBtZW1vcnkgc2F2aW5ncyBhcHBseSB0aGlz
IG9uIHRvcCBvZiB0aGlzIHBhdGNoc2V0Lg0KPiANCj4gIg0KPiBkaWZmIC0tZ2l0IGEvZnMvcHJv
Yy9wcm9jX3N5c2N0bC5jIGIvZnMvcHJvYy9wcm9jX3N5c2N0bC5jDQo+IGluZGV4IGM4ODg1NGRm
MGI2Mi4uZTAwNzNhNjI3YmFjIDEwMDY0NA0KPiAtLS0gYS9mcy9wcm9jL3Byb2Nfc3lzY3RsLmMN
Cj4gKysrIGIvZnMvcHJvYy9wcm9jX3N5c2N0bC5jDQo+IEBAIC05NzYsNiArOTc2LDggQEAgc3Rh
dGljIHN0cnVjdCBjdGxfZGlyICpuZXdfZGlyKHN0cnVjdCBjdGxfdGFibGVfc2V0ICpzZXQsDQo+
ICAgICAgICAgIHRhYmxlWzBdLnByb2NuYW1lID0gbmV3X25hbWU7DQo+ICAgICAgICAgIHRhYmxl
WzBdLm1vZGUgPSBTX0lGRElSfFNfSVJVR098U19JWFVHTzsNCj4gICAgICAgICAgaW5pdF9oZWFk
ZXIoJm5ldy0+aGVhZGVyLCBzZXQtPmRpci5oZWFkZXIucm9vdCwgc2V0LCBub2RlLCB0YWJsZSwg
MSk7DQo+ICsgICAgICAgLy8gQ291bnRzIGFkZGl0aW9uYWwgc2VudGluZWwgdXNlZCBmb3IgZWFj
aCBuZXcgZGlyLg0KPiArICAgICAgIHByaW50aygiJWxkIHN5c2N0bCBzYXZlZCBtZW0ga3phbGxv
YyBcbiIsIHNpemVvZihzdHJ1Y3QgY3RsX3RhYmxlKSk7DQo+IA0KPiAgICAgICAgICByZXR1cm4g
bmV3Ow0KPiAgIH0NCj4gQEAgLTExOTksNiArMTIwMSw5IEBAIHN0YXRpYyBzdHJ1Y3QgY3RsX3Rh
YmxlX2hlYWRlciAqbmV3X2xpbmtzKHN0cnVjdCBjdGxfZGlyICpkaXIsIHN0cnVjdCBjdGxfdGFi
bGVfDQo+ICAgICAgICAgICAgICAgICAgbGlua19uYW1lICs9IGxlbjsNCj4gICAgICAgICAgICAg
ICAgICBsaW5rKys7DQo+ICAgICAgICAgIH0NCj4gKyAgICAgICAvLyBDb3VudHMgYWRkaXRpb25h
bCBzZW50aW5lbCB1c2VkIGZvciBlYWNoIG5ldyByZWdpc3RyYXRpb24NCj4gKyAgICAgICAvL2lm
ICgoaGVhZC0+Y3RsX3RhYmxlICsgaGVhZC0+Y3RsX3RhYmxlX3NpemUpLT5wcm9jbmFtZSkNCj4g
KyAgICAgICAgICAgICAgIHByaW50aygiJWxkIHN5c2N0bCBzYXZlZCBtZW0ga3phbGxvYyBcbiIs
IHNpemVvZihzdHJ1Y3QgY3RsX3RhYmxlKSk7DQo+ICAgICAgICAgIGluaXRfaGVhZGVyKGxpbmtz
LCBkaXItPmhlYWRlci5yb290LCBkaXItPmhlYWRlci5zZXQsIG5vZGUsIGxpbmtfdGFibGUsDQo+
ICAgICAgICAgICAgICAgICAgICAgIGhlYWQtPmN0bF90YWJsZV9zaXplKTsNCj4gICAgICAgICAg
bGlua3MtPm5yZWcgPSBucl9lbnRyaWVzOw0KPiAiDQo+IGFuZCB0aGVuIHJ1biB0aGUgZm9sbG93
aW5nIGJhc2ggc2NyaXB0IGluIHRoZSBrZXJuZWw6DQo+IA0KPiBhY2N1bT0wDQo+IGZvciBuIGlu
ICQoZG1lc2cgfCBncmVwIGt6YWxsb2MgfCBhd2sgJ3twcmludCAkM30nKSA7IGRvDQo+ICAgICAg
ZWNobyAkbg0KPiAgICAgIGFjY3VtPSQoY2FsYyAiJGFjY3VtICsgJG4iKQ0KPiBkb25lDQo+IGVj
aG8gJGFjY3VtDQo+IA0KPiBbNF0NCj4gYWRkL3JlbW92ZTogMC8wIGdyb3cvc2hyaW5rOiAwLzIx
IHVwL2Rvd246IDAvLTI0MzIgKC0yNDMyKQ0KPiBGdW5jdGlvbiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBvbGQgICAgIG5ldyAgIGRlbHRhDQo+IHhwY19zeXNfeHBjX2hiICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDE5MiAgICAgMTI4ICAgICAtNjQNCj4geHBjX3N5
c194cGMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMTI4ICAgICAgNjQgICAgIC02
NA0KPiB2cmZfdGFibGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxMjggICAg
ICA2NCAgICAgLTY0DQo+IHVjbWFfY3RsX3RhYmxlICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDEyOCAgICAgIDY0ICAgICAtNjQNCj4gdHR5X3RhYmxlICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgMTkyICAgICAxMjggICAgIC02NA0KPiBzZ19zeXNjdGxzICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAxMjggICAgICA2NCAgICAgLTY0DQo+IHNjc2lfdGFi
bGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEyOCAgICAgIDY0ICAgICAtNjQN
Cj4gcmFuZG9tX3RhYmxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNDQ4ICAgICAz
ODQgICAgIC02NA0KPiByYWlkX3RhYmxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAxOTIgICAgIDEyOCAgICAgLTY0DQo+IG9hX3RhYmxlICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDE5MiAgICAgMTI4ICAgICAtNjQNCj4gbWFjX2hpZF9maWxlcyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgMjU2ICAgICAxOTIgICAgIC02NA0KPiBpd2NtX2N0bF90
YWJsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxMjggICAgICA2NCAgICAgLTY0DQo+
IGlwbWlfdGFibGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEyOCAgICAgIDY0
ICAgICAtNjQNCj4gaHZfY3RsX3RhYmxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
MTI4ICAgICAgNjQgICAgIC02NA0KPiBocGV0X3RhYmxlICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAxMjggICAgICA2NCAgICAgLTY0DQo+IGZpcm13YXJlX2NvbmZpZ190YWJsZSAg
ICAgICAgICAgICAgICAgICAgICAgIDE5MiAgICAgMTI4ICAgICAtNjQNCj4gY2Ryb21fdGFibGUg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNDQ4ICAgICAzODQgICAgIC02NA0KPiBi
YWxsb29uX3RhYmxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxMjggICAgICA2NCAg
ICAgLTY0DQo+IHBhcnBvcnRfc3lzY3RsX3RlbXBsYXRlICAgICAgICAgICAgICAgICAgICAgIDkx
MiAgICAgNzIwICAgIC0xOTINCj4gcGFycG9ydF9kZWZhdWx0X3N5c2N0bF90YWJsZSAgICAgICAg
ICAgICAgICAgNTg0ICAgICAxMzYgICAgLTQ0OA0KPiBwYXJwb3J0X2RldmljZV9zeXNjdGxfdGVt
cGxhdGUgICAgICAgICAgICAgICA3NzYgICAgIDEzNiAgICAtNjQwDQo+IFRvdGFsOiBCZWZvcmU9
NDI5OTQwMDM4LCBBZnRlcj00Mjk5Mzc2MDYsIGNoZyAtMC4wMCUNCj4gDQo+IFs1XQ0KPiBhZGQv
cmVtb3ZlOiAwLzAgZ3Jvdy9zaHJpbms6IDAvMSB1cC9kb3duOiAwLy02NCAoLTY0KQ0KPiBGdW5j
dGlvbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvbGQgICAgIG5ldyAgIGRl
bHRhDQo+IHJhbmRvbV90YWJsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDQ0OCAg
ICAgMzg0ICAgICAtNjQNCj4gVG90YWw6IEJlZm9yZT0xODg1NTI3LCBBZnRlcj0xODg1NDYzLCBj
aGcgLTAuMDAlDQo+IA0KPiBbNl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMwOTEz
LWphZy1zeXNjdGxfcmVtb3ZlX2VtcHR5X2VsZW1fYXJjaC12Mi0wLWQxYmQxM2EyOWJhZUBzYW1z
dW5nLmNvbS8NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvZWwgR3JhbmFkb3MgPGouZ3JhbmFkb3NA
c2Ftc3VuZy5jb20+DQo+IA0KPiAtLS0NCj4gDQo+IC0tLQ0KPiBKb2VsIEdyYW5hZG9zICgxNSk6
DQo+ICAgICAgICBjZHJvbTogUmVtb3ZlIG5vdyBzdXBlcmZsdW91cyBzZW50aW5lbCBlbGVtZW50
IGZyb20gY3RsX3RhYmxlIGFycmF5DQo+ICAgICAgICBocGV0OiBSZW1vdmUgbm93IHN1cGVyZmx1
b3VzIHNlbnRpbmVsIGVsZW1lbnQgZnJvbSBjdGxfdGFibGUgYXJyYXkNCj4gICAgICAgIHhlbjog
UmVtb3ZlIG5vdyBzdXBlcmZsdW91cyBzZW50aW5lbCBlbGVtZW50IGZyb20gY3RsX3RhYmxlIGFy
cmF5DQo+ICAgICAgICB0dHk6IFJlbW92ZSBub3cgc3VwZXJmbHVvdXMgc2VudGluZWwgZWxlbWVu
dCBmcm9tIGN0bF90YWJsZSBhcnJheQ0KPiAgICAgICAgc2NzaTogUmVtb3ZlIG5vdyBzdXBlcmZs
dW91cyBzZW50aW5lbCBlbGVtZW50IGZyb20gY3RsX3RhYmxlIGFycmF5DQo+ICAgICAgICBwYXJw
b3J0OiBSZW1vdmUgdGhlIG5vdyBzdXBlcmZsdW91cyBzZW50aW5lbCBlbGVtZW50IGZyb20gY3Rs
X3RhYmxlIGFycmF5DQo+ICAgICAgICBtYWNpbnRvc2g6IFJlbW92ZSB0aGUgbm93IHN1cGVyZmx1
b3VzIHNlbnRpbmVsIGVsZW1lbnQgZnJvbSBjdGxfdGFibGUgYXJyYXkNCj4gICAgICAgIGluZmlu
aWJhbmQ6IFJlbW92ZSB0aGUgbm93IHN1cGVyZmx1b3VzIHNlbnRpbmVsIGVsZW1lbnQgZnJvbSBj
dGxfdGFibGUgYXJyYXkNCj4gICAgICAgIGNoYXItbWlzYzogUmVtb3ZlIHRoZSBub3cgc3VwZXJm
bHVvdXMgc2VudGluZWwgZWxlbWVudCBmcm9tIGN0bF90YWJsZSBhcnJheQ0KPiAgICAgICAgdnJm
OiBSZW1vdmUgdGhlIG5vdyBzdXBlcmZsdW91cyBzZW50aW5lbCBlbGVtZW50IGZyb20gY3RsX3Rh
YmxlIGFycmF5DQo+ICAgICAgICBzZ2kteHA6IFJlbW92ZSB0aGUgbm93IHN1cGVyZmx1b3VzIHNl
bnRpbmVsIGVsZW1lbnQgZnJvbSBjdGxfdGFibGUgYXJyYXkNCj4gICAgICAgIGZ3IGxvYWRlcjog
UmVtb3ZlIHRoZSBub3cgc3VwZXJmbHVvdXMgc2VudGluZWwgZWxlbWVudCBmcm9tIGN0bF90YWJs
ZSBhcnJheQ0KPiAgICAgICAgcmFpZDogUmVtb3ZlIG5vdyBzdXBlcmZsdW91cyBzZW50aW5lbCBl
bGVtZW50IGZyb20gY3RsX3RhYmxlIGFycmF5DQo+ICAgICAgICBoeXBlci12L2F6dXJlOiBSZW1v
dmUgbm93IHN1cGVyZmx1b3VzIHNlbnRpbmVsIGVsZW1lbnQgZnJvbSBjdGxfdGFibGUgYXJyYXkN
Cj4gICAgICAgIGludGVsIGRybTogUmVtb3ZlIG5vdyBzdXBlcmZsdW91cyBzZW50aW5lbCBlbGVt
ZW50IGZyb20gY3RsX3RhYmxlIGFycmF5DQo+IA0KPiAgIGRyaXZlcnMvYmFzZS9maXJtd2FyZV9s
b2FkZXIvZmFsbGJhY2tfdGFibGUuYyB8ICAzICstDQo+ICAgZHJpdmVycy9jZHJvbS9jZHJvbS5j
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMgKy0NCj4gICBkcml2ZXJzL2NoYXIvaHBldC5j
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyArLQ0KPiAgIGRyaXZlcnMvY2hhci9pcG1p
L2lwbWlfcG93ZXJvZmYuYyAgICAgICAgICAgICB8ICAzICstDQo+ICAgZHJpdmVycy9jaGFyL3Jh
bmRvbS5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMgKy0NCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICAgfCAgMyArLQ0KPiAgIGRyaXZlcnMvaHYv
aHZfY29tbW9uLmMgICAgICAgICAgICAgICAgICAgICAgICB8ICAzICstDQo+ICAgZHJpdmVycy9p
bmZpbmliYW5kL2NvcmUvaXdjbS5jICAgICAgICAgICAgICAgIHwgIDMgKy0NCj4gICBkcml2ZXJz
L2luZmluaWJhbmQvY29yZS91Y21hLmMgICAgICAgICAgICAgICAgfCAgMyArLQ0KPiAgIGRyaXZl
cnMvbWFjaW50b3NoL21hY19oaWQuYyAgICAgICAgICAgICAgICAgICB8ICAzICstDQo+ICAgZHJp
dmVycy9tZC9tZC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMgKy0NCj4gICBk
cml2ZXJzL21pc2Mvc2dpLXhwL3hwY19tYWluLmMgICAgICAgICAgICAgICAgfCAgNiArKy0tDQo+
ICAgZHJpdmVycy9uZXQvdnJmLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMgKy0N
Cj4gICBkcml2ZXJzL3BhcnBvcnQvcHJvY2ZzLmMgICAgICAgICAgICAgICAgICAgICAgfCA0MiAr
KysrKysrKysrKystLS0tLS0tLS0tLS0tLS0NCj4gICBkcml2ZXJzL3Njc2kvc2NzaV9zeXNjdGwu
YyAgICAgICAgICAgICAgICAgICAgfCAgMyArLQ0KPiAgIGRyaXZlcnMvc2NzaS9zZy5jICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAzICstDQo+ICAgZHJpdmVycy90dHkvdHR5X2lvLmMg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMgKy0NCj4gICBkcml2ZXJzL3hlbi9iYWxsb29u
LmMgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyArLQ0KPiAgIDE4IGZpbGVzIGNoYW5nZWQs
IDM2IGluc2VydGlvbnMoKyksIDYwIGRlbGV0aW9ucygtKQ0KPiAtLS0NCj4gYmFzZS1jb21taXQ6
IDBlOTQ1MTM0YjY4MDA0MGI4NjEzZTk2MmY1ODZkOTFiNmQ0MDI5MmQNCj4gY2hhbmdlLWlkOiAy
MDIzMDkyNy1qYWctc3lzY3RsX3JlbW92ZV9lbXB0eV9lbGVtX2RyaXZlcnMtZjAzNDk2MmEwZDhj
DQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
