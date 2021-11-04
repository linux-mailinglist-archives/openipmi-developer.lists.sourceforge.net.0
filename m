Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB74444D1A
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Nov 2021 02:49:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1miRsE-0001Kr-6K; Thu, 04 Nov 2021 01:49:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zev@bewilderbeest.net>) id 1miRs4-0001Gt-Oo
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Nov 2021 01:48:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CkPGfIGdJl1Sm1jvL44ZO2+ID8zt4FiR+y+7s0H1yZI=; b=U4LTJFolJ62VhJ+DQHk3kRNX2b
 1NZsTFF8ZAp3qf/Rtk0T3X08y7FVKfDtgRZRr2cVr6kDnqRpUA+UlpY7SjXkwHUW2XvJl5Vq6r43i
 +M8noZMeIHLZPaw1RSI3ogL7RaoNp33tvIZ2gch4npZBRBdLiygyoHYfVtpOD8c/drao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CkPGfIGdJl1Sm1jvL44ZO2+ID8zt4FiR+y+7s0H1yZI=; b=mqMsG3+J0q54J88eVkS/5Y6/XB
 9UQWoKK5IEMtRFLK3APsi83vVnp/mCkGJc1F/tfwrmL2JLI1r4wh6sSqO1b3eumaHwTF8NeRbdXQs
 DuTAg+rNGKSsTnJ+0kvwWZ+JcgDAYdqs4DBWXsJ39NfMWTzPY9OQjBwAs69AgBsWz8WQ=;
Received: from thorn.bewilderbeest.net ([71.19.156.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miRrz-000qZM-Ga
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Nov 2021 01:48:51 +0000
Received: from hatter.bewilderbeest.net (97-113-240-219.tukw.qwest.net
 [97.113.240.219])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: zev)
 by thorn.bewilderbeest.net (Postfix) with ESMTPSA id E1862373;
 Wed,  3 Nov 2021 18:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
 s=thorn; t=1635990517;
 bh=CkPGfIGdJl1Sm1jvL44ZO2+ID8zt4FiR+y+7s0H1yZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MCLLMK1eNlLmUSFwuTCCKFYiMHqzqedGFHRwcU30yLMztv6y1e9AWemNn9ScMfmE0
 sMthE9AG3P7UW56IMhJPKMA2NpK6lPUQ78JvvrkDJJcI/6jZ6RDHTx15oQa78oVxTI
 VEzslz/RHf9aBc2RJ4oF7DDhvhy0bYOjGu1JkUGU=
Date: Wed, 3 Nov 2021 18:48:32 -0700
From: Zev Weiss <zev@bewilderbeest.net>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <YYM78OxYMYwiFzWD@hatter.bewilderbeest.net>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
 <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
 <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
 <63678f47-8b4a-1385-a755-bc7c2316ca0d@linux.intel.com>
 <YYHhMGm4C0srTW1x@hatter.bewilderbeest.net>
 <768252cc-2466-3b4b-9087-549b83e00a81@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <768252cc-2466-3b4b-9087-549b83e00a81@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 03, 2021 at 08:56:10AM PDT, Jae Hyun Yoo wrote:
 > >Hi Zev, > >Not sure but looks like one of LPC functions is enabled while
 kernel >booting. > Looks like that was exactly the clue I needed -- obvious
 in retrospect, but I realize now that I'm only seeing this happen when I
 bypass the normal shutdown sequence via 'reboot -f'; with a plain 'reb [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bewilderbeest.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1miRrz-000qZM-Ga
Subject: Re: [Openipmi-developer] [PATCH -next 0/4] Add LCLK control into
 Aspeed LPC sub drivers
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 03, 2021 at 08:56:10AM PDT, Jae Hyun Yoo wrote:
>
>Hi Zev,
>
>Not sure but looks like one of LPC functions is enabled while kernel
>booting. 
>

Looks like that was exactly the clue I needed -- obvious in retrospect, 
but I realize now that I'm only seeing this happen when I bypass the 
normal shutdown sequence via 'reboot -f'; with a plain 'reboot' I don't 
hit any problems.  Can you reproduce it that way?


Zev



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
