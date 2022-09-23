Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F535E70D1
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Sep 2022 02:46:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1obWqC-0004dA-GU;
	Fri, 23 Sep 2022 00:46:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1obWqB-0004d0-31
 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 00:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mXVWJIJwSO3raPa9ufywv7c+77gnmVznFVtzSWE/PWI=; b=ax05ItGXKNfz+VZKK4OYoGqbiG
 tJRSgtJle8/PV6tMM/KahQAok5PqlARuQbJXqw2SlrEkvxGGr1FNPqFCVERP/8KvhSBXeKuvpQbxa
 XgmwerFdWGtBUKIukIYxYjzU4zgW1P9E05AxOakD21SdoVJ0B8xMykerKRd6JgJaRXcQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mXVWJIJwSO3raPa9ufywv7c+77gnmVznFVtzSWE/PWI=; b=hrwxMfO0ROIozMisYZjCX69ByI
 pD+i26i0v8mok0I2FVoqLiGuQ8HAII6Okg7RuTPW4WC84qWCKZr58Hhbs5ADP64jmYDS2FXg4/N2A
 yWXzY4UrRsfNXviRtsddcfRcg5zOtql9Rk0GhRnoV1PZUymt5O7F4HvvufJsW1Q6IONU=;
Received: from mail-qt1-f175.google.com ([209.85.160.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obWq1-0003yr-0x for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 00:46:48 +0000
Received: by mail-qt1-f175.google.com with SMTP id ay9so7567052qtb.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 17:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date;
 bh=mXVWJIJwSO3raPa9ufywv7c+77gnmVznFVtzSWE/PWI=;
 b=CnUtdlr3MflXY9APdCyGECCKCC6Tg9h7Xm0eVaSftVCuFpx60N0VpT3gsXKWp2kJTY
 BXfmkKkmCmMzeBqeM5TSPaMsFazVxYCHrB9XzOgVrMnFKe3GXPL9xlqeXzL71fci+GQQ
 1xYLa7an7rxSru244yJW+eB9FK8APVNsjDKGTjwtGH7hKxgKNOS0B5QptjEbE04XDya7
 3zsVN2/eKX24VQntvodQAVNVCUPnO7xHK7i8AYcAo4Z+kwLOlvwVEbVBcMyipjuBhQIL
 ZEE/yM3/2wqIf/Gz7jH880f9PvFOwqvoAYltFFZAufrTg6Lrk5XgGIlT8vo3hY8RiTex
 i16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date;
 bh=mXVWJIJwSO3raPa9ufywv7c+77gnmVznFVtzSWE/PWI=;
 b=Uj1HMDr64sCw2JpwUBGtxPDlfL2MzZ+bfy7re6HcqVgraHhRXs1glpDHdbggGfCNXd
 4I6Mfj1tdw4QRM41yil50TEnDmwxH9vdWBlht5aNTNEwtIRsisBBZRshkqclUHUWqxox
 qnPEJlmVBSHUGWV23jcVeXRbxl/D9+ljQOVLtYtsOyVpmfVG58bAVuXWAalz11+Km6Ld
 FoyG2Z7Yo8cRJujoTtdfD+4XiHm5ukzdZWmgzjpHNvt2Xgud2sHD9qCA7M/3ERGegVrk
 xzqB6RPxTHutmt0HO64qwhuE6GYK/ukcd4kzS4IjLjtOHj0tyXhdifSsyPozqpwi5yck
 pKjA==
X-Gm-Message-State: ACrzQf23KrgJGV/znrOru+gI382h4QrI9KJpwSxzl2pT4duEX0orr/rZ
 VO8S4+/Nkwgms+8VHLTurw==
X-Google-Smtp-Source: AMsMyM7Vwi8UT8AzmcUsgZ+9Dfnkxh4vwpyYFitMUQ1x78fA2yBEqtNkAHc+z3c3ThqM2bEfFYa5lA==
X-Received: by 2002:ac8:578c:0:b0:35c:d9fe:98f7 with SMTP id
 v12-20020ac8578c000000b0035cd9fe98f7mr5175139qta.360.1663893994524; 
 Thu, 22 Sep 2022 17:46:34 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 br30-20020a05620a461e00b006ceafb1aa92sm5152695qkb.96.2022.09.22.17.46.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 17:46:33 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:5d3f:d09:85d2:d6e])
 by serve.minyard.net (Postfix) with ESMTPSA id 9E69A180015;
 Fri, 23 Sep 2022 00:46:32 +0000 (UTC)
Date: Thu, 22 Sep 2022 19:46:31 -0500
From: Corey Minyard <minyard@acm.org>
To: ChiaWei Wang <chiawei_wang@aspeedtech.com>
Message-ID: <Yy0B5+jzc7R7Drz7@minyard.net>
References: <20220920020333.601-1-chiawei_wang@aspeedtech.com>
 <YyywI8265vECnEHv@minyard.net>
 <HK0PR06MB37794D51E9DB4A864249F96691519@HK0PR06MB3779.apcprd06.prod.outlook.com>
 <Yyz70LckHqyiNhGa@minyard.net>
 <HK0PR06MB377992E9AF7B91CE41452B4A91519@HK0PR06MB3779.apcprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HK0PR06MB377992E9AF7B91CE41452B4A91519@HK0PR06MB3779.apcprd06.prod.outlook.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 23, 2022 at 12:38:08AM +0000, ChiaWei Wang wrote:
 > > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
 > > Sent: Friday, September 23, 2022 8:21 AM > > > > On Fri, Sep [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.175 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1obWq1-0003yr-0x
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: aspeed: Update port
 address comments
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
Reply-To: minyard@acm.org
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Sep 23, 2022 at 12:38:08AM +0000, ChiaWei Wang wrote:
> > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
> > Sent: Friday, September 23, 2022 8:21 AM
> > 
> > On Fri, Sep 23, 2022 at 12:08:07AM +0000, ChiaWei Wang wrote:
> > > Hi Corey,
> > >
> > > > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey
> > Minyard
> > > > Sent: Friday, September 23, 2022 2:58 AM
> > > >
> > > > On Tue, Sep 20, 2022 at 10:03:33AM +0800, Chia-Wei Wang wrote:
> > > > > Remove AST_usrGuide_KCS.pdf as it is no longer maintained.
> > > >
> > > > Even if it's no longer maintained, is it useful?  It seems better to
> > > > leave in useful documentation unless it has been replaced with something
> > else.
> > >
> > > This document has no permeant public link to access.
> > > Aspeed has dropped this file but we keep receiving customer request asking
> > for this document.
> > > The most important part regarding KCS port rule is still kept in the updated
> > comment.
> > 
> > I mean, if you have code that is implementing what is documented, why did
> > you remove the document?  I don't understand why you would retire
> > documentation that people still want to use.
> > 
> > I could put it on the IPMI sourceforge or github page as a historical document.
> 
> This document is a personal note of one of our former employee.
> It is known to only the owner and his supporting customers.
> Most of us has no access to this document.
> In addition, after chip revision, certain information is not guaranteed anymore.

Ok, I'll take the patch.  Thanks.

-corey

> 
> Regards,
> Chiawei


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
