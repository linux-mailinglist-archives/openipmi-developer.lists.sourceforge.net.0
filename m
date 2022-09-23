Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4C55E70A4
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Sep 2022 02:20:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1obWQv-00031U-4u;
	Fri, 23 Sep 2022 00:20:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1obWQs-00031N-Qd
 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 00:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wOI+7RifnLsYvXIuNif1j+Pe+3PvkPZ4LwCVFhf/miw=; b=FVLhVPTH4zyi5FyCJCDaRqu+Pu
 ClJZogEMiEX0Gy0hKDT1TEdaehjKufcQlFQeM743OHVv4ORqZkgDRFXnlDhA13AvZEere79RLK5i0
 G1WVE8ZRH5Xour2eWnnPqqV9ol4iY+SVFlLh9oZuHro+02Wu4hFpQtWf3vshcM+XZWLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wOI+7RifnLsYvXIuNif1j+Pe+3PvkPZ4LwCVFhf/miw=; b=gFGFa/oKTF+GwwXClCMEup9gej
 sfZPFoTM2dAvgE2/XxhnHHFzYyroExExbcrAU2fzYbSKlhwfqw/A3HlbCGItREbfIlEjAGCyv5ssL
 qfjiQtp2Dz4b6TTpG9PvqcVptxaHmjcuYn/ZOrasPAyOzx8w9tTif9IH9RAnJsKfnBLo=;
Received: from mail-oa1-f41.google.com ([209.85.160.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obWQr-00H2wG-3y for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 00:20:42 +0000
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-12b542cb1d3so16172914fac.13
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 17:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date;
 bh=wOI+7RifnLsYvXIuNif1j+Pe+3PvkPZ4LwCVFhf/miw=;
 b=cZWwxqBBqFBqZum7y2sdaWueRJk5Us1AGAxvEJgqRMCQuHx2yI/jwjQB1XYgoNLPOf
 /0N+AC55M/O3nmfswF118uqVF39kqxBXHVJvYFMjMCeZChRo2LWTJwzZwFEtC3AOr8V7
 MTqTmjysE6gePjdjSrSQb9Z4FEDg+SBdA+dM0antiTxZgySwVqouwi5mKlPWCr7Sp2AR
 RKM+fzaxwOHgYEfGdJLcpFt5+MkaRtZa7/nv4IEFotZOJMO/rlLDG01/MMUCL7/z7Glg
 5BXxZQ5az53lcqjLErse5UYvf6c2rBDqyKOR+3RqlDovaIVn84kJegwADk4YTz1qyTlt
 MIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date;
 bh=wOI+7RifnLsYvXIuNif1j+Pe+3PvkPZ4LwCVFhf/miw=;
 b=S8BOMpobannfzPISqfw4IRxU4ds3b0c81stc8NB/ezORKHxeEw5MCH1vc7A8FG4vLc
 3YwnxDBoLzNSH5JKqOfpeJuDIahoU1hPsZz5B7Ct9M5f6Cuov+Drs/6gmNNKrYRyVQrC
 U66y0cgAPejPWre4Dr/p4v0AuPjAqnwXxymJbXEjDEhpNfx+PC85fX4K8eYylWxiqnd7
 dMD83T+zuwvw2Uw4EMBb+uV9+TzfvjxKRq5toaI80XVzaTVVXnauYfWRkMOfendxE231
 t+hbyYN506amkQ14DuNfflKH4h6Gn0wWFsBELafyOBhKL4cb269y/KqZZJpd0CA6Br/W
 G2ww==
X-Gm-Message-State: ACrzQf3n4y7aK+RJpI8G27F8ll4V3mzgiY0qlCYDOJNFcVtdaujJ7Ivp
 oSrHjzkigroGqMcLqrCCYpTa1HfQ1L37
X-Google-Smtp-Source: AMsMyM6G4hH7WcGJQf2c+vIHQ/UgvzOI553Q8KD5llT+YUAU3KJEKt3k3/pk0J5PdEZ8Z6RFRkwWEw==
X-Received: by 2002:a05:6870:d7a5:b0:11d:a0b:f62b with SMTP id
 bd37-20020a056870d7a500b0011d0a0bf62bmr3438571oab.190.1663892434995; 
 Thu, 22 Sep 2022 17:20:34 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 x9-20020a056870330900b0011c20ffca67sm3825860oae.28.2022.09.22.17.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 17:20:34 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:5d3f:d09:85d2:d6e])
 by serve.minyard.net (Postfix) with ESMTPSA id 45A14180015;
 Fri, 23 Sep 2022 00:20:33 +0000 (UTC)
Date: Thu, 22 Sep 2022 19:20:32 -0500
From: Corey Minyard <minyard@acm.org>
To: ChiaWei Wang <chiawei_wang@aspeedtech.com>
Message-ID: <Yyz70LckHqyiNhGa@minyard.net>
References: <20220920020333.601-1-chiawei_wang@aspeedtech.com>
 <YyywI8265vECnEHv@minyard.net>
 <HK0PR06MB37794D51E9DB4A864249F96691519@HK0PR06MB3779.apcprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HK0PR06MB37794D51E9DB4A864249F96691519@HK0PR06MB3779.apcprd06.prod.outlook.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 23, 2022 at 12:08:07AM +0000, ChiaWei Wang wrote:
 > Hi Corey, > > > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of
 Corey Minyard > > Sent: Friday, September 23, 2022 2:58 AM > > > [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.41 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1obWQr-00H2wG-3y
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

On Fri, Sep 23, 2022 at 12:08:07AM +0000, ChiaWei Wang wrote:
> Hi Corey,
> 
> > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
> > Sent: Friday, September 23, 2022 2:58 AM
> > 
> > On Tue, Sep 20, 2022 at 10:03:33AM +0800, Chia-Wei Wang wrote:
> > > Remove AST_usrGuide_KCS.pdf as it is no longer maintained.
> > 
> > Even if it's no longer maintained, is it useful?  It seems better to leave in
> > useful documentation unless it has been replaced with something else.
> 
> This document has no permeant public link to access.
> Aspeed has dropped this file but we keep receiving customer request asking for this document.
> The most important part regarding KCS port rule is still kept in the updated comment.

I mean, if you have code that is implementing what is documented, why
did you remove the document?  I don't understand why you would retire
documentation that people still want to use.

I could put it on the IPMI sourceforge or github page as a historical
document.

-corey

> 
> Regards,
> Chiawei
> 
> > 
> > 
> > >
> > > Add more descriptions as the driver now supports the I/O address
> > > configurations for both the KCS Data and Cmd/Status interface
> > > registers.
> > >
> > > Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
> > > ---
> > >  drivers/char/ipmi/kcs_bmc_aspeed.c | 29 ++++++++++++++++++-----------
> > >  1 file changed, 18 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c
> > > b/drivers/char/ipmi/kcs_bmc_aspeed.c
> > > index cdc88cde1e9a..19c32bf50e0e 100644
> > > --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> > > +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> > > @@ -207,17 +207,24 @@ static void aspeed_kcs_updateb(struct
> > > kcs_bmc_device *kcs_bmc, u32 reg, u8 mask,  }
> > >
> > >  /*
> > > - * AST_usrGuide_KCS.pdf
> > > - * 2. Background:
> > > - *   we note D for Data, and C for Cmd/Status, default rules are
> > > - *     A. KCS1 / KCS2 ( D / C:X / X+4 )
> > > - *        D / C : CA0h / CA4h
> > > - *        D / C : CA8h / CACh
> > > - *     B. KCS3 ( D / C:XX2h / XX3h )
> > > - *        D / C : CA2h / CA3h
> > > - *        D / C : CB2h / CB3h
> > > - *     C. KCS4
> > > - *        D / C : CA4h / CA5h
> > > + * We note D for Data, and C for Cmd/Status, default rules are
> > > + *
> > > + * 1. Only the D address is given:
> > > + *   A. KCS1/KCS2 (D/C: X/X+4)
> > > + *      D/C: CA0h/CA4h
> > > + *      D/C: CA8h/CACh
> > > + *   B. KCS3 (D/C: XX2/XX3h)
> > > + *      D/C: CA2h/CA3h
> > > + *   C. KCS4 (D/C: X/X+1)
> > > + *      D/C: CA4h/CA5h
> > > + *
> > > + * 2. Both the D/C addresses are given:
> > > + *   A. KCS1/KCS2/KCS4 (D/C: X/Y)
> > > + *      D/C: CA0h/CA1h
> > > + *      D/C: CA8h/CA9h
> > > + *      D/C: CA4h/CA5h
> > > + *   B. KCS3 (D/C: XX2/XX3h)
> > > + *      D/C: CA2h/CA3h
> > >   */
> > >  static int aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u32
> > > addrs[2], int nr_addrs)  {
> > > --
> > > 2.25.1
> > >


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
