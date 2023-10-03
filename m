Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 062357B6E46
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Oct 2023 18:21:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qni9M-00071a-5e;
	Tue, 03 Oct 2023 16:21:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonathan.cameron@huawei.com>) id 1qni9F-00071C-CQ
 for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Oct 2023 16:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jydocjfl9PpDp85O9aLgL7d04/Imo5kH1Ce95bNMyQQ=; b=IhBAjAV08rpe8ksJb+0pVy/g2O
 vHau89hJpJQGUTooDf3YDc8S8QMna3CmWrXXZRcUOF2TGITvAT7Fm0LnctfPN3R1DUXbGSOhEJ5cZ
 bJdTqb/MwHohqZmOaixfEowQnQDB8deVQXgwALQJiMWoh2Rrp+AJZda+5v9FxaDXlTCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jydocjfl9PpDp85O9aLgL7d04/Imo5kH1Ce95bNMyQQ=; b=EHhUK2b4JhOokqy9buBWICerbj
 mlAR6D6BEq+yhcTZDIIz4edQ5caOujDco3CMSbjpqa8cEhtXi7JrpmOFw0I/qPhfjKnN9u1LV2xpX
 WvfuzmWxPfI4SRzqExKiBmcCiSXAP881b5uUhK4N2vJm3IJp6HyWMnUj/fk8EhH15wsU=;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qni9E-0001N4-OT for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Oct 2023 16:21:25 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.226])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4S0NKn0q8Wz67ydC;
 Wed,  4 Oct 2023 00:18:37 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Tue, 3 Oct
 2023 17:21:17 +0100
Date: Tue, 3 Oct 2023 17:21:16 +0100
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20231003172116.0000736e@Huawei.com>
In-Reply-To: <1fd97872-446e-42f3-84ad-6e490d63e12d@app.fastmail.com>
References: <20230928123009.2913-1-aladyshev22@gmail.com>
 <20230928123009.2913-4-aladyshev22@gmail.com>
 <20230929120835.0000108e@Huawei.com>
 <1fd97872-446e-42f3-84ad-6e490d63e12d@app.fastmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100003.china.huawei.com (7.191.160.210) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Thanks for the drive-by comments! No problem and keep up
 the good work in tidying this up. Many dark and interesting corners in the
 kernel and not all of them get the work they deserve :) Feel free to CC me
 and I'll take a look at any cleanup you propose. At least KCS is small so
 there aren't 100s of drivers to change :) 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.79.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.176.79.56 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qni9E-0001N4-OT
Subject: Re: [Openipmi-developer] [PATCH 3/3] mctp: Add MCTP-over-KCS
 transport binding
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
From: Jonathan Cameron via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: linux-arm-kernel@lists.infradead.org, Tomer Maimon <tmaimon77@gmail.com>,
 Corey Minyard <minyard@acm.org>, Konstantin Aladyshev <aladyshev22@gmail.com>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 openbmc@lists.ozlabs.org, Jeremy Kerr <jk@codeconstruct.com.au>,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 Eric Dumazet <edumazet@google.com>, David Miller <davem@davemloft.net>,
 netdev <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Matt Johnston <matt@codeconstruct.com.au>, Paolo Abeni <pabeni@redhat.com>,
 openipmi-developer@lists.sourceforge.net, linux-aspeed@lists.ozlabs.org,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


> Thanks for the drive-by comments!

No problem and keep up the good work in tidying this up.
Many dark and interesting corners in the kernel and not all of them get
the work they deserve :)

Feel free to CC me and I'll take a look at any cleanup you propose.
At least KCS is small so there aren't 100s of drivers to change :)

Jonathan

> 
> Andrew



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
