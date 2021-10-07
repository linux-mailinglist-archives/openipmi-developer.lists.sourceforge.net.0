Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D95425B49
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Oct 2021 21:04:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mYYgX-00082f-IF; Thu, 07 Oct 2021 19:04:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mYYgW-00082Z-0p
 for openipmi-developer@lists.sourceforge.net; Thu, 07 Oct 2021 19:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SxyXdNsyYmV5Tl8eNXZqHd4HMhchmqYT7ZdxvD1AScI=; b=WsAqLQ01nRN7z/zMnRfH4y18+V
 AhUbQTjm9cSJkl7cZuhcr+yfi24/4pvFQNzI1K6+tbMeDMUGrmCmKLIJbfGvfceiTefbi4l5S3+K0
 YVZYFSU997qbYBVAVHR3utArVeQ7qrjRSnLko9YdJep6LEUrtO8cCFUgWmFu/IVwOZCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SxyXdNsyYmV5Tl8eNXZqHd4HMhchmqYT7ZdxvD1AScI=; b=muct/L3jIcGNsbqrNMzU7SO/1b
 aN9vocgYYjDNgx+JsV5ZMaglFuDIss85JefwMXSBt/md+yh4/ZaVgsV7rpKBQhdOh/DcJPw6gwEky
 TJUx9OYnkuowFFOP3aytuSoZW50NoNc1wxofg9K3dsWQPPty9NEu/bRPOw8ip/cytqsA=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mYYgV-0004Mx-DU
 for openipmi-developer@lists.sourceforge.net; Thu, 07 Oct 2021 19:04:03 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 o27-20020a9d411b000000b005453f95356cso7795992ote.11
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Oct 2021 12:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=SxyXdNsyYmV5Tl8eNXZqHd4HMhchmqYT7ZdxvD1AScI=;
 b=F+Xc/9Vb9mRVWaKbzV/SLflQZt1R0tgoVeb1fEBrn9ac3XQ913oPpkkh63hMaWRIxQ
 mFbz7KvPHJiQ2J7KbbFuZJAK2PA5ObShO8P7v2ZWyPRB+kGyG6As/Uj81aojQTuVm14O
 8/6EHgxnuYt7rJ/l2ZxAv2vYKCMnG0W6C631b5oaA5C7VxLDeHkWEGkb0Y4eH6RVTr5i
 W/3s9LEiSYNIQrvrXAu2o4yRb7/dl1+QjQ9VU905Yxz0mZTkFzraQ6W9NsjowexXOiA7
 1arUBFBATjrDXKTy9QbLFBFODBxJAEw9NFeMPMRfugKN02uIXCB6tV5Yryu/nmyHyYNf
 EVxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=SxyXdNsyYmV5Tl8eNXZqHd4HMhchmqYT7ZdxvD1AScI=;
 b=gDu+jl+PUdsfA5ftv+lODEAAufH/5bRd7zIn7hj+Ux7yjOBYL4mTciQYVZJegn8L4S
 zk5BYgA2a3HlShZNYfspJWfjS4G11i01IoDueOYt42tr30McY3w/pVcweeO15aI1CxcQ
 hSwU0rdeUx9bk2bgm6Cyxx/qt7VuMxRmFKVBaRr7DmewI+ZmX2XWWjwqABDKeY0J9O2n
 mNoAAv6z27xIJZ4x6Z+kLVPCA2WX000O8+HRyyGEtmsLfsWB+sGXw20i9+4KY8Wvu+f6
 kAH+udzgKVxYyAwZXZUyxFr65W2g/yo1cDWZweKm5stjJ5FGEwfFK45nJFoEirIOb/vK
 Z1cg==
X-Gm-Message-State: AOAM5329XWU5M89WtzrXBdEXuryp4dvHawLZl5RHkbTidQQnG99XfZUG
 ULoknAXJDfOaffDvI1BXtw==
X-Google-Smtp-Source: ABdhPJyK026NoRKxTdlamHW752AxIjq919q2Bu/KdeQ+9IgHPzz6O3Stmx8RF8M7aBoy0KhbXfQ/xQ==
X-Received: by 2002:a9d:1b6f:: with SMTP id l102mr5084375otl.34.1633633437727; 
 Thu, 07 Oct 2021 12:03:57 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id v6sm33219ooe.4.2021.10.07.12.03.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Oct 2021 12:03:57 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:656d:b396:af0f:bc35])
 by serve.minyard.net (Postfix) with ESMTPSA id 504AB1800F0;
 Thu,  7 Oct 2021 19:03:56 +0000 (UTC)
Date: Thu, 7 Oct 2021 14:03:50 -0500
From: Corey Minyard <minyard@acm.org>
To: Joel Stanley <joel@jms.id.au>
Message-ID: <20211007190350.GA16026@minyard.net>
References: <20210903015314.177987-1-joel@jms.id.au>
 <YTe46lyQDfV6OzOc@robh.at.kernel.org>
 <CACPK8XeC=ZN2SRP+M2pz9RiAPD=chZr9+aifnnY03HAXDQ3xOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XeC=ZN2SRP+M2pz9RiAPD=chZr9+aifnnY03HAXDQ3xOA@mail.gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 07, 2021 at 06:37:00AM +0000, Joel Stanley wrote:
 > On Tue, 7 Sept 2021 at 19:09, Rob Herring <robh@kernel.org> wrote: > >
 > > On Fri, 03 Sep 2021 11:23:14 +0930, Joel Stanley wrote: > > > [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.48 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mYYgV-0004Mx-DU
Subject: Re: [Openipmi-developer] [PATCH] ipmi: bt: Add ast2600 compatible
 string
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
Cc: Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Oct 07, 2021 at 06:37:00AM +0000, Joel Stanley wrote:
> On Tue, 7 Sept 2021 at 19:09, Rob Herring <robh@kernel.org> wrote:
> >
> > On Fri, 03 Sep 2021 11:23:14 +0930, Joel Stanley wrote:
> > > The AST2600 has the same register set as the previous generation SoCs.
> > >
> > > Signed-off-by: Joel Stanley <joel@jms.id.au>
> > > ---
> > >  .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt          | 1 +
> > >  drivers/char/ipmi/bt-bmc.c                                       | 1 +
> > >  2 files changed, 2 insertions(+)
> > >
> >
> > Acked-by: Rob Herring <robh@kernel.org>
> 
> Corey, can you please merge this one?

Ok, it's in my linux-next branch.

Thanks,

-corey

> 
> Cheers,
> 
> Joel


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
