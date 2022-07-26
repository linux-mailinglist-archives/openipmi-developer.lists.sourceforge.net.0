Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07345581A76
	for <lists+openipmi-developer@lfdr.de>; Tue, 26 Jul 2022 21:47:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oGQWX-0005vt-Lm; Tue, 26 Jul 2022 19:47:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1oGQWW-0005vn-PC
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Jul 2022 19:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MAfdgifMMcfE/yXjpXpDSHvlhww07gmdGSC9ysTyuKc=; b=dGdbFQvUQEo9Hlmjh4/xjmobRH
 1L1aQIPZbR65dZzwBDqIoIVfzILZLdrEqUDn8uxL8x9zfPu3G3DNL7wzNW8YJZGDsGvSGYhz8GKl8
 L535w4DU1Sb2RjjNXvJA/iIXPbky5S7JvhkWwWYlnuzBS9JThxcSej23gRBlZWq/VnDU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MAfdgifMMcfE/yXjpXpDSHvlhww07gmdGSC9ysTyuKc=; b=PgfjDMg4L9UlBt8gcpwozlhasW
 ysakaB5W+VQKh6HwJQfrB+jrc3CvhdYwyzlX9L5Sc9RlBuCtrDyvB+p8EK9jiTrrY+J1XnmM1X9BY
 kFDspP+fFyVjlDds8AksQPW2yPzVK5BqjZqfkeXFGDzTtHZ4YFH6YtHqtsTlwenYv2xY=;
Received: from mail-qt1-f182.google.com ([209.85.160.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oGQWT-0000P3-Lm
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Jul 2022 19:47:20 +0000
Received: by mail-qt1-f182.google.com with SMTP id x11so11209933qts.13
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 26 Jul 2022 12:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=MAfdgifMMcfE/yXjpXpDSHvlhww07gmdGSC9ysTyuKc=;
 b=EFEbG43P2uz2lGXat4fyCPRM6thWWiiPkREsQpPN9+O/mqwyPckmqGwpoViHGCerJi
 QJlsMvlsxh9syDqBgncXxRlxo6namrgimntsHIOnjDl5VHWOb/6Pw1w+awTQ/s1YI8U7
 C0o4IGmuShLE0ehpCGpGPtG7QgQ9YxUt+1VNHrhgbgRs4dKUUb3kEeJNsfedphWsxX6R
 0z0KnBSoQoGh8XTvTM0iDMVL0XcqJaGh4RJMCGvzFyQfHvXOvsIVwdmnLw1zqNr1sBYL
 wyf+aFwi7hX1MRVi0Ko/r3NbFh8Vd1gweAUuErvI7HfPlvI+4Xmch/7b7qkPWiyYkrPA
 xayw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=MAfdgifMMcfE/yXjpXpDSHvlhww07gmdGSC9ysTyuKc=;
 b=A5/8lMxkNo7mA8xbOkkyGKLUWkpXwS8LQsh9NDvF4wl50UwywGk1li9tfwD2lbj8kd
 rNnTTlMKuULgCF+bQM5jtngrAjCy5Hdve/OSqnaq4XC31PK8o63taazcl0PNeI8qJQfh
 7+mpCmTJRXVo6bYdh3GjHdc9F8NxtfPt5J+b7NsJ7a0ab5lhUUh/nJzDKvy8hGhdy1LX
 FQib3l1TfNJ42F39LiJzpIpLl/Li2D1yttDc4bEWcbia/2p2YMQUqVD1ACGlWVIQ0Zun
 1NBKgt1Q9zOYBg/T0sgOvFH7tpPcqF2rQObSraEUNDPXKjaq0d5jPiLwfMY+4hVhkSn7
 u7/A==
X-Gm-Message-State: AJIora/VAKCg14sM/9LxiHxike5UkxaUFRo2GOPChVsxwzi6DqJtyZ2m
 Zk5dTsMzMppSsW60gGuCXA==
X-Google-Smtp-Source: AGRyM1tue0AfzJLG/Yn1jOuSrSPoqrsACDpveUi3WRkpV2rVPonkxoGaJ7hxgOnC0yfQXb79hjIKSg==
X-Received: by 2002:a05:622a:109:b0:31f:3302:3367 with SMTP id
 u9-20020a05622a010900b0031f33023367mr12518641qtw.488.1658864831713; 
 Tue, 26 Jul 2022 12:47:11 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 y17-20020a37f611000000b006b5e50057basm11427786qkj.95.2022.07.26.12.47.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jul 2022 12:47:11 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:495f:ee54:913c:d540])
 by serve.minyard.net (Postfix) with ESMTPSA id 21AE81800D9;
 Tue, 26 Jul 2022 19:47:10 +0000 (UTC)
Date: Tue, 26 Jul 2022 14:47:08 -0500
From: Corey Minyard <minyard@acm.org>
To: Tomer Maimon <tmaimon77@gmail.com>
Message-ID: <20220726194708.GO3834@minyard.net>
References: <20220717121124.154734-1-tmaimon77@gmail.com>
 <20220718125155.GA40038@minyard.net>
 <CAP6Zq1haOErfj2HZkqKwXZKr3+QvWP2VYK6QQOH5cjHYJ2rV0w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP6Zq1haOErfj2HZkqKwXZKr3+QvWP2VYK6QQOH5cjHYJ2rV0w@mail.gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jul 26, 2022 at 10:41:38PM +0300, Tomer Maimon wrote:
 > Hi Corey, > > > On Mon, 18 Jul 2022 at 15:51, Corey Minyard <minyard@acm.org>
 wrote: > > > > On Sun, Jul 17, 2022 at 03:11:22PM +0300, T [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1oGQWT-0000P3-Lm
Subject: Re: [Openipmi-developer] [PATCH v1 0/2] char: ipmi: kcs: add Arbel
 NPCM8XX support
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Benjamin Fair <benjaminfair@google.com>, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jul 26, 2022 at 10:41:38PM +0300, Tomer Maimon wrote:
> Hi Corey,
> 
> 
> On Mon, 18 Jul 2022 at 15:51, Corey Minyard <minyard@acm.org> wrote:
> >
> > On Sun, Jul 17, 2022 at 03:11:22PM +0300, Tomer Maimon wrote:
> > > This patch set adds Arbel NPCM8XX Keyboard Controller Style (KCS) support to
> > > KCS NPCM driver.
> > >
> > > The NPCM KCS driver tested on NPCM845 evaluation board.
> >
> > This seems reasonable, I've pulled it into my tree.  If anyone has any
> > issues with this, please respond.
> >
> > -corey
> >
> > >
> > > Tomer Maimon (2):
> > >   dt-bindings: ipmi: Add npcm845 compatible
> > >   char: ipmi: modify NPCM KCS configuration
> > >
> > >  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 5 +++--
> > >  drivers/char/ipmi/Kconfig                                  | 6 +++---
> > >  2 files changed, 6 insertions(+), 5 deletions(-)
> > >
> > > --
> > > 2.33.0
> > >
> 
> Sorry but I need to do a little fix in the document file.
> 
> Can I do it or have you already applied the patches?

At this point I'd prefer a patch on top of what is there.  5.19 isn't
released yet, so the window isn't open, but that will happen soon and I
don't want to rebase at this point.

-corey

> 
> Thanks,
> 
> Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
