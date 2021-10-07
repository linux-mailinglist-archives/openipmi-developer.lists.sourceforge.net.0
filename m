Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79901424D58
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Oct 2021 08:37:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mYN1y-0003RS-ID; Thu, 07 Oct 2021 06:37:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1mYN1w-0003RL-JR
 for openipmi-developer@lists.sourceforge.net; Thu, 07 Oct 2021 06:37:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dUxrBRt6OvcLPoqJOHX2abNP7ltgihocL0g/sk7K2lw=; b=TRluog5FR5s1WqQIwC05BULFZA
 HBP4zJPlhIDLTLOLXsFQXD45+FQH7/yQNruLWM/2lcD6XsuNrceb91j+bXRJ7CxZFOOqFC79K4WnS
 iJceUlh8/0RMFN6HLcIG8W1VdCKCq7Uwo4LFsdSqIWiXbRrd81WthlYESMRLfNUso6Ow=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dUxrBRt6OvcLPoqJOHX2abNP7ltgihocL0g/sk7K2lw=; b=j5X39o2Ea9VSyfWMnD2l/AG5LC
 7CKvhA8QAz4Py3mw0VK7+knCeMOLA6Io5ykQsr7iU8VZZMZH/fE1MQv6MnHuuCv509rvzhFqAPIhA
 zVkmn+itNfS//q6zjU2MkK9ZyXLDrOFUjWpjg3peycnhkEz77fzotITGGNb33hEYXYN4=;
Received: from mail-qt1-f173.google.com ([209.85.160.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mYN1q-0007zH-17
 for openipmi-developer@lists.sourceforge.net; Thu, 07 Oct 2021 06:37:24 +0000
Received: by mail-qt1-f173.google.com with SMTP id z24so451262qtv.9
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 06 Oct 2021 23:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dUxrBRt6OvcLPoqJOHX2abNP7ltgihocL0g/sk7K2lw=;
 b=CiajSCb53oY9Y7D5FhuUPDEnBHhSOyTuSZGT9aGm9ggRPT4+/EEWBLLIwHh0UqFuKE
 ONe6Syoxkz0PK+gnBAm9UolufPrg8n//f8lOJwiZ/aON684yVzPxLDMM4/7WtA6Kyv5u
 flk1mgyICUVxF4VdXVzEulYjBCAPlK7vqjGLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dUxrBRt6OvcLPoqJOHX2abNP7ltgihocL0g/sk7K2lw=;
 b=ZZiNjFnlvmiTrJpJZY0hIJm4wkXX+cn91Hi2ZiXx6HVBjUWP2EPn1shJCGZXzF1628
 jJB8FekSoVrEjU60sQSsATV3A22fDOh9k9JGGtvKlOYWnFMBpUkZL2enkTHEBRvrg32l
 h36fWPBy7XBTlgNZEN1p0Axj9faA2Ed8pCguC2DnPq3YP0DxlMA1rg+C051IGtrXKTvr
 zdjXRVra7vYbk/PdWr289qeHY18yz9B47RB6Qe334yCYXBIKZlJU6Q4LJeJ8Bo7D4ThL
 O1vOGHiBghoIYyAsgmmpk5Kl/YEHOYMHURln3HXIgDJ2jvShqhxLYQdkzxF/5IRq54zc
 221w==
X-Gm-Message-State: AOAM533TmdeItdkaUQ9HtwJcTTYKTErCyDOlcAKU2D7dQYjGAfeZUnlF
 1tWJOTORStqduRVs1Hukk5dYwytW/6+Uhmj5l0M=
X-Google-Smtp-Source: ABdhPJzJKGB0bKrPdFevp0Kfe6cAN2pA2BxujBR69LHxUrmv7BgsbuOxEEMKWMY2urlciyFICIvo2gpM0UIjfhrtoWg=
X-Received: by 2002:a05:622a:11c9:: with SMTP id
 n9mr2966552qtk.295.1633588632121; 
 Wed, 06 Oct 2021 23:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210903015314.177987-1-joel@jms.id.au>
 <YTe46lyQDfV6OzOc@robh.at.kernel.org>
In-Reply-To: <YTe46lyQDfV6OzOc@robh.at.kernel.org>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 7 Oct 2021 06:37:00 +0000
Message-ID: <CACPK8XeC=ZN2SRP+M2pz9RiAPD=chZr9+aifnnY03HAXDQ3xOA@mail.gmail.com>
To: Rob Herring <robh@kernel.org>, Corey Minyard <minyard@acm.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 7 Sept 2021 at 19:09, Rob Herring <robh@kernel.org>
 wrote: > > On Fri, 03 Sep 2021 11:23:14 +0930, Joel Stanley wrote: > > The
 AST2600 has the same register set as the previous generation SoCs [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.173 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.173 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jms.id.au]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mYN1q-0007zH-17
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
Cc: Andrew Jeffery <andrew@aj.id.au>, devicetree <devicetree@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 7 Sept 2021 at 19:09, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, 03 Sep 2021 11:23:14 +0930, Joel Stanley wrote:
> > The AST2600 has the same register set as the previous generation SoCs.
> >
> > Signed-off-by: Joel Stanley <joel@jms.id.au>
> > ---
> >  .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt          | 1 +
> >  drivers/char/ipmi/bt-bmc.c                                       | 1 +
> >  2 files changed, 2 insertions(+)
> >
>
> Acked-by: Rob Herring <robh@kernel.org>

Corey, can you please merge this one?

Cheers,

Joel


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
