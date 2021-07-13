Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD21C3C7A4C
	for <lists+openipmi-developer@lfdr.de>; Wed, 14 Jul 2021 01:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xLc1GctDqhBHIUOsT5FA08Jhjcogo3IwXIefLHfHr/s=; b=YUfOBXt474ffWbMK7DMMF2/Ai/
	MhbPT7ejuIPwPxQOYT0k4j4bcrLODtmV8J/5mMdJXrX42ThP6gY6NTux865AJJjmKNeu/Tuaw1CUd
	Y7LRSVkTZ9S0ufRYEViOMGrF48lZH8ZY2aVxkeWrgT/WE79uMKthtwBrpudLLn9O0lC0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m3S63-0001l2-8L; Tue, 13 Jul 2021 23:45:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1m3S61-0001kw-2I
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Jul 2021 23:45:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5jb9vr/ztzj6YCpH+brtq9Hp87I6+wN6MqGc88AbZUI=; b=NMewfajQO2Kw+ZZFouPQoSprvH
 FixmMVOIic1mYHIjDwpJctYWrwz0VNBC2AjC0z3EhitYg5aLP46MSGHckaFZ6rYjTTShao0388t05
 PsMW67kNtZoLGKeP7XDLzTuNrCT0hSwn39ZKQnoOFIC0g+iUf2hUWeKN2YI6Y4gZvWWU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5jb9vr/ztzj6YCpH+brtq9Hp87I6+wN6MqGc88AbZUI=; b=HKHMAGcjoaRm9p/h/iOJQ/3gvo
 sV5zXbGv/m6Vba0Mov7aePKKexwDMWzA36glHptlmp34RbPv1QeJz9Np97NE0gKHpGWVGpvm814Gk
 F6U5vol318KVNA6omjIHwoRuflRZmWaqo1H0ktvgg9Ixwej8mzOSzq9fV8TVMBrhem7A=;
Received: from mail-bn8nam12on2127.outbound.protection.outlook.com
 ([40.107.237.127] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m3S5s-0002nl-Ay
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Jul 2021 23:45:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bWx/Z7mdK7gz8nupZKQ1Q1d+rFS/lr9vtkpPzw9W4vaXQ+u4pbFReMdUHaoq4K9v0xSF7wvF4MN61j/3NiEuz16nSQkNqm2NuwqUNp1VqC087UKO5atN8G4MPnufA5v0xdEX52YVKzFj8mIWqTwJmVMwwNYGH+gAp6ECQBwBCh/vUJ0zaaiYBSFJs90asWi6eXCgWm0y+ogL1GJ5x8eM6GbY7PjmPLGzvv/lmnoq7vX09oKME8YqYhSEYDoLpG340ugK6D5od4U2dTbMfgJwb4dmo+AsFzGmE3yXckwGErMrOKgyYNkOoZeyHw74bjMFC/NdzRBoZCLrpeDicnIYFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jb9vr/ztzj6YCpH+brtq9Hp87I6+wN6MqGc88AbZUI=;
 b=fXeR7c+WT89QauojzSbPRunBhwi8mqEjSR5Prud7ST5uMl7R0lmOCQnIgsncIXPjORjaCyigWtat8XQvp84wffJy1Zf0B+DAThitLblLNXr8ww/LqTp4XImLs2CaHEhUN+UKtE1w9EKJuqgmYXdIZc5Qbnmm6jPNol6ifbUospmI4+EmTtLd6DTEQxnHXF0ZY+BtYX3SQCnnZBU2eWxON4DRMRz8B7kLjmbns67J8BqjKU61e74aJR3D2VwgzhaX1rCpG/Tk1fVSWKaM/T9gdI+vqz9VqdTHsNgZgbKUd0f3Tl1Y/7MsK/lNnow8ZSgrbAW64t8tCHXiorzqRkY0aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jb9vr/ztzj6YCpH+brtq9Hp87I6+wN6MqGc88AbZUI=;
 b=l7zaz5pW46hYjxekuu1gdRW+9igb0R0ym0gn65fzf71q2drd0GYwx5GI8TRLzQ9rdYKWoQAdhaGr1UJVugYCapKMWO0gKEbZTZgcaKIG4ER2eafzs20yw552MgXTOOfdmBqby1Rgg1gDFzigz/+idLO7A7o6dh8tecq174w7Qkw=
Authentication-Results: os.amperecomputing.com; dkim=none (message not signed)
 header.d=none; os.amperecomputing.com;
 dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MW4PR01MB6291.prod.exchangelabs.com (2603:10b6:303:79::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.21; Tue, 13 Jul 2021 23:29:47 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::452a:24fb:12cb:9d7e]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::452a:24fb:12cb:9d7e%5]) with mapi id 15.20.4308.027; Tue, 13 Jul 2021
 23:29:46 +0000
To: minyard@acm.org
References: <20210713055425.30636-1-quan@os.amperecomputing.com>
 <20210713154405.GB3406@minyard.net>
Message-ID: <f7dd5b0f-a2a7-0a5f-3521-6721e8e52cb5@os.amperecomputing.com>
Date: Wed, 14 Jul 2021 06:29:27 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.11.0
In-Reply-To: <20210713154405.GB3406@minyard.net>
Content-Language: en-US
X-ClientProxiedBy: HK0PR01CA0051.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::15) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2402:800:623c:5af9:f5a9:dac2:3878:4e29]
 (2402:800:623c:5af9:f5a9:dac2:3878:4e29) by
 HK0PR01CA0051.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend
 Transport; Tue, 13 Jul 2021 23:29:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f488e68-70ad-4b74-d0d3-08d9465619b3
X-MS-TrafficTypeDiagnostic: MW4PR01MB6291:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MW4PR01MB62919D95B5586AF032AC024BF2149@MW4PR01MB6291.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P6buRa/oRSuxsRx0RthzSGK0amzUWA0hLpK6MdJ3HTMYjaz9LN1onB33V6fw/9+MUHAFVtIF/RZh76au5TorJSOq20Trkcslk236o7H7uZWzH4lPYmO95G6NnTbfO1iNMfMnghiT8eFegfFYcaWtZ8SOzLtlvr0DPKwpd/EXi0PCXI6vfso4qR+rD3051lMnP9seiqk5pO9RHs98SrfvG8yJdMa9aUna32syawOAr4156UyrZI5pvdc0lWLUJgsSipXawpH7vSrT0yshpwh3viJHrLllT+JHH5H0k445mFQra8TvLcj+CKufmnVtYrDLG8x5oisSC5WZu6ARSXb5BTXBL+4i0wYZswYdGQOamSYAoLehx1UloJ0LYkEsD8YTHHsxkhtO7GC7lSLUZ2DX0skhYwDSbHqrR4KfrjNk74dOE7qQ3awKP0uWNOi91WyFzDwc6JtrmTdQFKeZzg7aa8TkrnsbMbGJw19ToD5awWSeu9DBt5zIHDHeF6VfSyk8IFHE4D5y81TIcrncIKIYylm3mKDZVDEEc8UGDQf6XTMMYKSkaYuIeO4NYK2mRMgewetQ/y9gep4mSWNDLf46ZYAxLrbOndq2xhkdUiiM+QvGGdQW97pmFhuJr+dXS0r6SLN3NZByfU96hGNE3tXA66CLXMoHPyu6WBNRd4LWfZDWQ+jJMDkbLobLLEqedoPdYdrBBk9vLeNVJEJaOsO8pQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(376002)(366004)(136003)(346002)(396003)(31686004)(83380400001)(86362001)(66946007)(66556008)(6666004)(4326008)(66476007)(54906003)(31696002)(6916009)(186003)(38100700002)(5660300002)(478600001)(53546011)(7416002)(52116002)(8936002)(316002)(107886003)(8676002)(2616005)(6486002)(2906002)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmNDZ0szMUpMMlRZbGlDb1lEeU5TT0RhTloyNGlQdEJPRWtkQ2tWZ2Frclhv?=
 =?utf-8?B?RENVVDhvTVNTeWVLNlAzVTI5ME5sWmdMdVV5L1NsTm54YzhKVnYzTnB5NE5o?=
 =?utf-8?B?cEhYWFlia3RZWU5zNTI3U1pOWTZPN1k3VXhuWXJtaHZWVTR4RXYyVUY0d05m?=
 =?utf-8?B?VHFpdGY3M2lmSFJodWh4UFIyTjJlcnhHOFVoQWFGQ05ldUVPV1dEdVFMUXN6?=
 =?utf-8?B?WGRJZ2ZyUHZrR0tkUlFSSlpxdFkzZzhTTm1vY3hUTnUySnYxTDVlWGFldDRm?=
 =?utf-8?B?NnNkSnVTUWh0QTAzZlB2WlE5U1FzZm91aUlrV0JmdUVCWGZPZi9PaEhvN3c5?=
 =?utf-8?B?aUxQalFlaEZ0OC9Id1lSQmQ4N1VnYXlFeCtRY0RxZEVteU9oQnhMSnNhVWJo?=
 =?utf-8?B?TW9HU3NJQVF2dTFNdnU1cXBJNDBwMDVwQngyRXI0R2hiaVVpdjFPcnk0bTR2?=
 =?utf-8?B?NDNhVFk4eTk5MG9mb1pvZXpya1FYS0hYUFdNLy9jY1VISzNCVzJKWk9zY0dX?=
 =?utf-8?B?ZVZLOEx3VFA2UWRqajBlMTRZMUJ3cEJtMkJFVDdGUWxraTZybTRTSlFONVlB?=
 =?utf-8?B?bi9hcUYyQjFCYVU2d3hrL0RqNWdCL1ppQURZMGI0WGNHazlTOC9TYUF0THd1?=
 =?utf-8?B?T01QYWdGcGRtQ0tzL284SlM3STYvNUdyYkZROGpPaWJrOW1CQmc4RTVZMDdK?=
 =?utf-8?B?LzR2dmpGWTFDUWpTalhKZWtaWUZWYXkrZXh6M25BcEdKbEU4U1MwMEVNOElj?=
 =?utf-8?B?L3VjSDBHUTNnU1IxMkZEUVV1bGV3M1hFUVd6RFNocXdlMGM1RFNIbi9Nbktj?=
 =?utf-8?B?Ui8zalRaSTc0UE1ySGdIejRadDR5UW94cWJTaU1Oek9XblNQTm9ydG5FS25t?=
 =?utf-8?B?c0JRNUw3cEM3dHFkbmRZSmlaY0Q5SVdXWUtlV0IzRFgzc1RIb1pETCtnbFJR?=
 =?utf-8?B?ZEYrbm9qeCt4aUszcHlLZGtQb213cklVQkg2a2p1OVFya3VSaE1HbjAxVzRW?=
 =?utf-8?B?NXVpOUdQZXc5dHlEZjE5TEpmQ3o4eFRGMFNteEx1L0F5NUkrK1lpMGNiZFBE?=
 =?utf-8?B?R3h4b1d6MnZEdHRnMDVJV3BHS3FTWjRsdGFZdHRnTDJIZWdhckZWdGM5OUVu?=
 =?utf-8?B?eXhZWWc2SGQwb3pVZnJacmFiRXRSQUJFLzZnaFdwbzlBUE9pcjVaRXdEaXhq?=
 =?utf-8?B?NTdrbHZhVXVFK2F4MkdyeEdQeTNpTVlRcW1hQU9kRnR1Nmsxb01pUzVudzBE?=
 =?utf-8?B?a3cwZWVMNk9rWVdwUFpCTWRCRkRjSXNmMk4yYlpWNm45L3ZWTnQyVXI5VWxu?=
 =?utf-8?B?Y2g3MkRCMHh6dkU0YUdUM1FBU09BK1dJM056c0ltUHJnN1hoamJIemlaZjA0?=
 =?utf-8?B?WGJVRlhYc0lraWNRRi85cHRuaW1DMzRyY1dROGxqNU9rUTNvR1pJRTdaaUI4?=
 =?utf-8?B?aXY2RGpiQ1lFa0cvT01Ea0JRVDBYbDNBVnJZVWxuQWR0Z2dkRStRbC9Pb3pm?=
 =?utf-8?B?WkcxeHEvM2ZkTkJTcUgxWFdZTTZVTllBWnVTTFY5TVA2OHk2TzdEK3lVV2s5?=
 =?utf-8?B?WVRWNFNnWmFVNWp1QUxDZE1BTCtiSDU5dkQ2MFN0NjdvNDZTRitYVXdPMk1k?=
 =?utf-8?B?Zjg4ZXp0amw3SnZlM3BPM0wxVWd6eUNweTBlY0diQVFiYVhYd0FFcW1qNXVQ?=
 =?utf-8?B?RkJnU0xBT2cxN3JHc0RacVNjZThVNlQ0T2pNQXE2Vi9oZ01OSUpHcVQzdm84?=
 =?utf-8?B?QldTWUwvVGNIdDN5aVpWS1Jlb3l0L0VmVDF6Zm5yL0hkNzZyVEN1Q3lLVWJy?=
 =?utf-8?B?R0p4dDh1bjFDaWJZeExaNDYxZUhweXdvd3ZjSUJNQTVqZkZEZFQvaEJsVjds?=
 =?utf-8?Q?yUmCRmn8i1Ng8?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f488e68-70ad-4b74-d0d3-08d9465619b3
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2021 23:29:46.5430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rDq+0aTSeB7lqfHEGihBEwVZsWu8i3mI/vNhmYRYRRuNJTuBg4/tIyHLfAFSSoRBMr32mqCGpoKCewz6I7k1QvPHlFB8Zga8wsqUBXaVMws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR01MB6291
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.237.127 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.127 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.4 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1m3S5s-0002nl-Ay
Subject: Re: [Openipmi-developer] [PATCH v4 0/3] Add SSIF BMC driver
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
From: Quan Nguyen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Quan Nguyen <quan@os.amperecomputing.com>
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 13/07/2021 22:44, Corey Minyard wrote:
> On Tue, Jul 13, 2021 at 12:54:22PM +0700, Quan Nguyen wrote:
>> This series add support the SSIF BMC driver which is to perform in-band
>> IPMI communication with their host in management (BMC) side.
> 
> Per the kernel build robot, looks like patch 3 introduces slave_enable()
> but patch 1 uses it.
> 
> -corey
> 
Thanks Corey,

The order is not correct and kernel build robot found this hurts 
bisectibility.
The patch 3 should be the first patch.

- Quan

>>
>> SSIF BMC driver in this series is tested with Aspeed AST2500.
>>
>> v4:
>>    + Fix recursive spinlock                                      [Graeme]
>>    + Send response with Completion code 0xFF when aborting         [Quan]
>>    + Fix warning with dt_binding_check                              [Rob]
>>    + Change aspeed-ssif-bmc.yaml to ssif-bmc.yaml                  [Quan]
>>    + Added bounding check on SMBus writes and the whole request     [Dan]
>>    + Moved buffer to end of struct ssif_bmc_ctx to avoid context
>>      corruption if somehow buffer is written past the end           [Dan]
>>    + Return -EINVAL if userspace buffer too small, dont
>>      silence truncate                                       [Corey, Joel]
>>    + Not necessary to check NONBLOCK in lock                      [Corey]
>>    + Enforce one user at a time                                    [Joel]
>>    + Reject write with invalid response length from userspace     [Corey]
>>    + Add state machines for better ssif bmc state handling         [Quan]
>>    + Drop ssif_bmc_aspeed.c and make ssif_bmc.c is generic
>>      SSIF BMC driver                                               [Quan]
>>    + Change compatible string "aspeed,ast2500-ssif-bmc" to
>>      "ampere,ssif-bmc"                                             [Quan]
>>    + Toggle Slave enable in i2c-aspeed to turn on/off slave mode   [Ryan]
>>    + Added slave_enable() to struct i2c_algorithm to control
>>      slave mode and to address the recursive spinlock      [Graeme, Ryan]
>>    + Abort current request with invalid SMBus write or
>>      invalid command                                               [Quan]
>>    + Abort all request if there is pending response                [Quan]
>>    + Changed validate_pec() to validate_request()                  [Quan]
>>    + Add unsupported_smbus_cmd() to handle unknown SMBus command   [Quan]
>>    + Print internal state string for ease investigating issue      [Quan]
>>    + Move to READY state on SLAVE_STOP event                       [Quan]
>>    + Change initilize_transfer() to process_smbus_cmd()            [Quan]
>>    + Introduce functions for each slave event                      [Quan]
>>
>> v3:
>>    + Switched binding doc to use DT schema format [Rob]
>>    + Splited into generic ssif_bmc and aspeed-specific [Corey, Joel]
>>    + Removed redundant license info [Joel]
>>    + Switched to use traditional if-else [Joel]
>>    + Removed unused ssif_bmc_ioctl() [Joel]
>>    + Made handle_request()/complete_response() to return void [Joel]
>>    + Refactored send_ssif_bmc_response()/receive_ssif_bmc_request()
>>    [Corey]
>>    + Remove mutex [Corey]
>>    + Use spin_lock/unlock_irqsave/restore in callback [Corey]
>>    + Removed the unnecessary memset [Corey]
>>    + Switch to use dev_err() [Corey]
>>    + Combine mask/unmask two interrupts together [Corey]
>>    + Fixed unhandled Tx done with NAK [Quan]
>>    + Late ack'ed Tx done w/wo Ack irq [Quan]
>>    + Use aspeed-specific exported aspeed_set_slave_busy() when slave busy
>>    to fix the deadlock [Graeme, Philipp, Quan]
>>    + Clean buffer for last multipart read [Quan]
>>    + Handle unknown incoming command [Quan]
>>
>> v2:
>>    + Fixed compiling error with COMPILE_TEST for arc
>>
>> Quan Nguyen (3):
>>    ipmi: ssif_bmc: Add SSIF BMC driver
>>    bindings: ipmi: Add binding for SSIF BMC driver
>>    i2c: aspeed: Add slave_enable() to toggle slave mode
>>
>>   .../devicetree/bindings/ipmi/ssif-bmc.yaml    |  38 +
>>   drivers/char/ipmi/Kconfig                     |  11 +
>>   drivers/char/ipmi/Makefile                    |   1 +
>>   drivers/char/ipmi/ssif_bmc.c                  | 781 ++++++++++++++++++
>>   drivers/char/ipmi/ssif_bmc.h                  | 106 +++
>>   drivers/i2c/busses/i2c-aspeed.c               |  20 +
>>   include/linux/i2c.h                           |   2 +
>>   7 files changed, 959 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
>>   create mode 100644 drivers/char/ipmi/ssif_bmc.c
>>   create mode 100644 drivers/char/ipmi/ssif_bmc.h
>>
>> -- 
>> 2.28.0
>>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
