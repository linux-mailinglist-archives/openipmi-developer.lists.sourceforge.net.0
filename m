Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2487937F86E
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 May 2021 15:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QJgEY16M+f3K4meXTbkSxk6Akq3isk4BvCBWe5X65Kc=; b=Fha6uskZPOlYDHdtPIbBo9sCsQ
	rufjP6i4+zZN2LDfmJr1LdAYAUMVmCKVURE4lg1i3u65Sp9/8PUYTVaachKh3eBlDq3boIp60M67M
	BcHljmXqeortO9jE4268AzOnf5J7SlN1BF4dSSOc3I9cZzpDxt90qsIO6/hxN/N90OwU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lhB7T-0006jh-Ln; Thu, 13 May 2021 13:11:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <petr.pavlu@suse.com>) id 1lhAQW-0004lo-2j
 for openipmi-developer@lists.sourceforge.net; Thu, 13 May 2021 12:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Date:Message-ID:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gZ2g9uQv5iES7LTBG/fBVUIaQIACZ4tbfCIW9fDlCfs=; b=WOoQe4KEblLq+gqb0eL0mHfvPk
 572T//a4uRejCZNrRpZASd0CLr5c0mZqXTPhHPhqXXRZyO025pmkuxK5GHG2QQJ9mQVTikNBs1Pwm
 D/wMHmYG6fL2DMRPfAz63jmRUcDpEW+HIXKfZWEHEBQFu1ALMg4VSmuf1520tjDXoy/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Message-ID:Cc:To
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gZ2g9uQv5iES7LTBG/fBVUIaQIACZ4tbfCIW9fDlCfs=; b=B
 pOXlS2eyLCiaoGmlYTufCVSWHIltd3NAEoFE9yhtoSuJMovJR8iNJR/P5F9YmEqcvTNYQJqswGw4w
 YtaZZW994NJxW/I3lJEyHzvvDbAhtfmfNtf5oV6OzyMiSJBfPLNvm/MZBcjK5T1m11iFsi3tnhzsw
 EQO8jan7aeToSgj8=;
Received: from de-smtp-delivery-102.mimecast.com ([194.104.109.102])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhAQQ-0004Te-UR
 for openipmi-developer@lists.sourceforge.net; Thu, 13 May 2021 12:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1620908800;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=gZ2g9uQv5iES7LTBG/fBVUIaQIACZ4tbfCIW9fDlCfs=;
 b=GPvmXmj6BhAu8mcQJSP6t3wRkVOfOri264s0LEhdPa58scxe2xjPl/shm8mzrw+pxa9Ass
 Begu5RafTAYueoRlQNyCvGvO8XXfPZWRyBYme2l71bgV+8EdGZ+M5+ko1LPMkr8tEUJRfj
 HjZtj5ZjjvrMM/gka6q9m4Gbrm5Uuxk=
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2050.outbound.protection.outlook.com [104.47.4.50]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-15-UK7Quo2gP5K_svKDSNIqew-1; Thu, 13 May 2021 14:26:39 +0200
X-MC-Unique: UK7Quo2gP5K_svKDSNIqew-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EGRSq6sE1ackDuAMAN2uSG8dNdWayuAKGMKAX+ekqjq5NtLDLRc7BYu8lKyOProfkaioJ/b4B5XF+k/AeH40H0r38pWTffLj45duP+oqGPkomB4gudA7SBcWHyMqM/hkOYsr/k1JbZlO5wIoxmVDqDyvb2otgsIjVyr/Bzzo5XCxhL6j0ky6f+5r6wt+Amrf6uG8aFjDXYRmVg+zbea2yWDlXm+3r4tA31irjNAuztxaBhU9l8zfazDmhjKj/HikaituZF0SmSi38QdESceGFKsv/952eezv8sHtm4L6eMez8CMK+wab791l9WpvybCSDkDNCREM3xXeWUt+06LHeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gZ2g9uQv5iES7LTBG/fBVUIaQIACZ4tbfCIW9fDlCfs=;
 b=Os5TLmZbPTSfqVk1JULdw17PublBUI16fan1FSkEYWhTDbPOxXVfdmmfWTOuych8wZH3q9IFtZOuua0sMEvGd8Gy/od3K/1QFWYviP0WPs6UFVf2yDzdtmF7oLXD8FBiaEUk1fIK/exD+pldzMU0ITHtCavenQVjwTC/Vgcq2PTf11yBYdpvkoGOBv7wozD8yD9FGCbAUDBNh0NDBOd4eHD3Mqs+KcLOQ2KHI5d+/c5fJnxtoaMxF6nRBOwAdlg+u6DxxRi4D4fBaS89Svc5lj7wXhpDKIYJOTasr7BQ9e22FlWVsvPlJt0fdqO3/IWTwX8TI6c2QcVGXA2Tq+IkQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: suse.com; dkim=none (message not signed)
 header.d=none;suse.com; dmarc=none action=none header.from=suse.com;
Received: from AM0PR0402MB3395.eurprd04.prod.outlook.com
 (2603:10a6:208:1a::16) by AM0PR0402MB3396.eurprd04.prod.outlook.com
 (2603:10a6:208:20::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Thu, 13 May
 2021 12:26:37 +0000
Received: from AM0PR0402MB3395.eurprd04.prod.outlook.com
 ([fe80::3028:7301:c341:9d29]) by AM0PR0402MB3395.eurprd04.prod.outlook.com
 ([fe80::3028:7301:c341:9d29%4]) with mapi id 15.20.4108.032; Thu, 13 May 2021
 12:26:37 +0000
To: minyard@acm.org
Message-ID: <10a41bdc-9c99-089c-8d89-fa98ce5ea080@suse.com>
Date: Thu, 13 May 2021 14:26:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
Content-Language: en-US
X-Originating-IP: [195.250.132.148]
X-ClientProxiedBy: FR2P281CA0035.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::22) To AM0PR0402MB3395.eurprd04.prod.outlook.com
 (2603:10a6:208:1a::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.100.51.161] (195.250.132.148) by
 FR2P281CA0035.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:14::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.11 via Frontend Transport; Thu, 13 May 2021 12:26:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d03e7d7f-37bb-4a37-1bb4-08d9160a5ab5
X-MS-TrafficTypeDiagnostic: AM0PR0402MB3396:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR0402MB3396F539F28DB5509335ECB4E6519@AM0PR0402MB3396.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TRDtZE4Xk3cAsw++M2Yj0KDIZ+EmQ+qdc1zk7jxUDL2ZYjwHuGkcY/gGg8K2zbt0GYwtvaurTv54XYN945LOGkxnGYQ2FUCyg6LyGfOxrFQYK00i4Nsh40kkPMRLOxIlMO7PEuuHQGxcnkPCRyeKNQPmI27oRIUmzogOMfmA2D8E1lOD2xUFSMTfIKeu1Kp4niSvSwZwYxFtfzSeg5864cj4SAHmWz9LVu4av8bYkOAQVPV9SzFMdfT+pM1k3PeQ6seMb2B/BcWvAeo/z67Q2NbGCzOAys9LVYCyjw757HNR2C+WUKKLnXV50mHGo4ns0pYZp+dVoIXybBRaS+JVBtUCJeCPhKx7RJqj7eCCcSZN+q2n3n00BSSvFyQFWOozVM/hzj6c3gN9oaWerTk9aN33p1RrXgWtU7H073tqhOFtbxaQiAl0/uSz0l2dU1y38wKX9I3sUCKnYRi6FSjQBPMffZ4072OJjW5Mr/lncc9MDdqfgWgx6Ts/XHpBgKEIt5X6X7Ovf/ET9lUz87WSFDF7le6j55Yh3D+yqB5XMAC4sRvaHPAg4c4vIVVxZJsngxgnjOHRcSC6yn6JLlkecucKIEhEo3q0KtpqXxPc3T2pIoFdrUaZ7w2cfAkuIyuxhKW6567FTwwMSua+als4/4jX9fI5PBoDYbVbmv/Fcjs+ExvaQa393dEXCKFk3vZHYjirDiFU7yGWP94QHbwCzQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR0402MB3395.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66946007)(16576012)(31696002)(66556008)(8936002)(6486002)(44832011)(498600001)(956004)(2616005)(186003)(83380400001)(16526019)(66476007)(86362001)(5660300002)(6916009)(107886003)(38100700002)(8676002)(26005)(4326008)(31686004)(36756003)(2906002)(207123002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?SkNBb002aURYWlZvT253MThiSE8rK1ZGQjV4aldnazRqSnI1dldrNzM5RHRB?=
 =?utf-8?B?TkVYZkFMSmVKcTk5eUd6bldidHNvaHRIT1FkeVFaazExSHlPUHdOTEdxMTRT?=
 =?utf-8?B?cTVPK1FwTnR4M0NRUXJBVnl3WU9LQ3EzMzh4ZHo5ZVFzUUZDUVZ2NE1xMW5M?=
 =?utf-8?B?SVlIeXQyNUFpQ0dHam80VU5TYVZzMEg5aTRHS0FzdEhwb2pSNTZxN2NJK1Nw?=
 =?utf-8?B?VkQwU1pQL2ZudlFhUkpkQUFKNUE1U0FUV2VFa25FU2xpRis1elNrcDJiSGM1?=
 =?utf-8?B?Rlh2Myt2dXZXRW8veWFlTDkvNWtWazhjemo0WWhjNWlKQjZWQ3IyQUZ0YXQ5?=
 =?utf-8?B?WkhiVUd6V1R3NHVBTE51S1U5Ui9nelZEWGFZYW9GUGJKSXk1V3BHSWpEYWFM?=
 =?utf-8?B?ZEtBS2JvcFFFVlV5VnZXZmJpS21ScngxS0ZkOEYwODJwbjlFNkU1bXp0azFK?=
 =?utf-8?B?WEYwRk01eTdCeER3VkxBV0xVSnBENDUzWVFERjZWWXR4bUhSRmJxalE2Tzcz?=
 =?utf-8?B?eWloMGhWc0hrVVZ3Vmc5Q3ZpQzRiY2M0WnB0SG5UOWw5Z01mYVNobFI3d29Y?=
 =?utf-8?B?OS9Dck9YTnIxNjRMRHJXTnRKcGRIRjhiempWL3I2TktVTTFXNlRQU2Z6WVF4?=
 =?utf-8?B?aWIzc0JWb3B4d2dLNmt5Y0wwS0d4T3hZKzNZenRZdThVWVZBcEZ5ODN2UGIy?=
 =?utf-8?B?blRPeXM1WkE4WEV1WlpRTzlpYkJrWmZBVDZvVi90OEtCanE1UGRqanRoRHJv?=
 =?utf-8?B?RXN1ckdINUhwY2grK1RJTkZUZHRrTEZtbmlmNlk3WXFKZnNCQ1M2TEIxeU5v?=
 =?utf-8?B?OHltb1FXNkl1NGxVeW1MaXcwR0RaWHVJai92NVU2Y2FvT2NyTXFZR2krTTdV?=
 =?utf-8?B?cHBYdU9pRitzNDlUVVhJUjZaMEtpdGE0ck1KZ0RjTXBuelhTZURSL1R1SjNC?=
 =?utf-8?B?MWNoTTJ0YVcwakNVWTFScjVJM09QYzdjR3haMEU2aEgrYzBNY3oyZ0dhdmVB?=
 =?utf-8?B?cUNIc1czMWUyQ0ZnQk9ONHpMelJCRFhuQnVnN2JhLzNWRWFHVzhDS05EaHVY?=
 =?utf-8?B?b1IvWjduUVNET0RpSGFUM0Z0L25iNUxVV2NXR2NXRVRJTDlVWWFUQngwb3Bp?=
 =?utf-8?B?MUNaOEg3VXRWamRkTkVlSTNQMzJHUSt0cUdGbzBFTk9ySkU1a1NodFMrM0Jr?=
 =?utf-8?B?c2FuV1JIc0hzZ0pQTmsybmg4WHZFMmhWbDlCamtjTnFmaGtVWXRHR0theXA4?=
 =?utf-8?B?N1FpY1IzT05WTjhRSTdyem9CMTM5c08xK1ROQ09lREpscng4QW80QVZMUmtl?=
 =?utf-8?B?QW5WbnZMbVJ2VFI5MENNbGdIRUM0Qko1NGRJTEhFMnVQVmdWNVpaY1BmOWdk?=
 =?utf-8?B?OEJGTEw5d213dlJ0RDlSbnR1Y285WnA2K21uS1FYVXk1dSs4Yy9USkFxb2ZR?=
 =?utf-8?B?MkZOR2x5OXpZVEVwQTVCTCtoRXBzTTRRb2x1VWlGQ09FUFlaSG8vaG5BTHZy?=
 =?utf-8?B?MEszbktLV3BzUS9uQ1cyNEdOc3dJMVErdjVKeGlhT2ZMUVAvK01FZHZoaTBJ?=
 =?utf-8?B?ZnN6UGl0Y3BaYnl0dDIyOVNzYitlQzBIZWZWdmNNVkJhQlErb3lLY2QzQkQz?=
 =?utf-8?B?WUFEMnl4OGpWQWhuWlNaL3hDTFNneHh3WHl6c1l0RGRpeEVrN3FYbWdHc3kw?=
 =?utf-8?B?bWd3NTAwU0xiUi9ydit6akcxNHBCbjNzUTdWVkhqVjhxaEtPdGxpV0FjUlg0?=
 =?utf-8?Q?uem6xpP48Iz8mnoiOJDLHcFCQxZ+lad4SDs6tDb?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d03e7d7f-37bb-4a37-1bb4-08d9160a5ab5
X-MS-Exchange-CrossTenant-AuthSource: AM0PR0402MB3395.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2021 12:26:37.7907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9d4Vje3geJ5VjPhCN8sdRLjvMOUTQGXNkhTZXeZ2qvU9F461LV3KiDtZy2+6UI5ctJMblmZaI0kFalqR2xsM3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3396
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [194.104.109.102 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lhAQQ-0004Te-UR
X-Mailman-Approved-At: Thu, 13 May 2021 13:11:13 +0000
Subject: [Openipmi-developer] [PATCH] ipmi/watchdog: Stop watchdog timer
 when the current action is 'none'
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
From: Petr Pavlu via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Petr Pavlu <petr.pavlu@suse.com>
Cc: openipmi-developer@lists.sourceforge.net, petr.pavlu@suse.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

When an IPMI watchdog timer is being stopped in ipmi_close() or
ipmi_ioctl(WDIOS_DISABLECARD), the current watchdog action is updated to
WDOG_TIMEOUT_NONE and _ipmi_set_timeout(IPMI_SET_TIMEOUT_NO_HB) is called
to install this action. The latter function ends up invoking
__ipmi_set_timeout() which makes the actual 'Set Watchdog Timer' IPMI
request.

For IPMI 1.0, this operation results in fully stopping the watchdog timer.
For IPMI >= 1.5, function __ipmi_set_timeout() always specifies the "don't
stop" flag in the prepared 'Set Watchdog Timer' IPMI request. This causes
that the watchdog timer has its action correctly updated to 'none' but the
timer continues to run. A problem is that IPMI firmware can then still log
an expiration event when the configured timeout is reached, which is
unexpected because the watchdog timer was requested to be stopped.

The patch fixes this problem by not setting the "don't stop" flag in
__ipmi_set_timeout() when the current action is WDOG_TIMEOUT_NONE which
results in stopping the watchdog timer. This makes the behaviour for
IPMI >= 1.5 consistent with IPMI 1.0. It also matches the logic in
__ipmi_heartbeat() which does not allow to reset the watchdog if the
current action is WDOG_TIMEOUT_NONE as that would start the timer.

Signed-off-by: Petr Pavlu <petr.pavlu@suse.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 32c334e34d55..e4ff3b50de7f 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -371,16 +371,18 @@ static int __ipmi_set_timeout(struct ipmi_smi_msg  *smi_msg,
 	data[0] = 0;
 	WDOG_SET_TIMER_USE(data[0], WDOG_TIMER_USE_SMS_OS);
 
-	if ((ipmi_version_major > 1)
-	    || ((ipmi_version_major == 1) && (ipmi_version_minor >= 5))) {
-		/* This is an IPMI 1.5-only feature. */
-		data[0] |= WDOG_DONT_STOP_ON_SET;
-	} else if (ipmi_watchdog_state != WDOG_TIMEOUT_NONE) {
-		/*
-		 * In ipmi 1.0, setting the timer stops the watchdog, we
-		 * need to start it back up again.
-		 */
-		hbnow = 1;
+	if (ipmi_watchdog_state != WDOG_TIMEOUT_NONE) {
+		if ((ipmi_version_major > 1) ||
+		    ((ipmi_version_major == 1) && (ipmi_version_minor >= 5))) {
+			/* This is an IPMI 1.5-only feature. */
+			data[0] |= WDOG_DONT_STOP_ON_SET;
+		} else {
+			/*
+			 * In ipmi 1.0, setting the timer stops the watchdog, we
+			 * need to start it back up again.
+			 */
+			hbnow = 1;
+		}
 	}
 
 	data[1] = 0;
-- 
2.26.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
