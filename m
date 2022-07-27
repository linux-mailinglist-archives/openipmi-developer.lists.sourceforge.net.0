Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3845581F97
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Jul 2022 07:39:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oGZlZ-0001AQ-CR; Wed, 27 Jul 2022 05:39:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tmaimon77@gmail.com>) id 1oGZlY-0001AJ-Bx
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Jul 2022 05:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TiljjiRdL3J7XgA9lRW8mh7Q8UMy2rckFdpaiD+6ujw=; b=I6vC3udE2YqT26tYPM2ZFsPEx7
 Qpa7ekaDodwuhxjT7Pr9gAJyzQE2TgQ4eHbe3jZpwtYZMOT72DPtzAz60Ek9xd920EBKLXqo0Kb+b
 cnJXgpDATCdZEwj2V7X+YAtKDShxLq7wm8VrtW1yBctlf3y2R7WzBjqZ9bpQgHUpt/VQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TiljjiRdL3J7XgA9lRW8mh7Q8UMy2rckFdpaiD+6ujw=; b=B6ASrVJVso+uFoMpW7+DwF2Q6c
 I+untIN+LtW4AtueI16pMwgeqkwJwvNoR1dEaup4so1/Fw7c2jvjL0TzH7ZKbsma1KrQxRZqCxYFc
 nVtx5DfP3sb1CY8u6L5Bg8Y8maagJScykBFdsYxksEsmDrtX+d8q0dmwj+mJYcha8JF8=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oGZlW-00032s-VV
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Jul 2022 05:39:27 +0000
Received: by mail-lf1-f46.google.com with SMTP id p11so20749713lfu.5
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 26 Jul 2022 22:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TiljjiRdL3J7XgA9lRW8mh7Q8UMy2rckFdpaiD+6ujw=;
 b=NztSDmjZzcPZTSmd5mq8HZlLFMGzHBXihUfv2sk5AX6Sm+oTSk2v97ABQJmVcRKGCr
 nI7dnqm4kSht8qcX+gw4Q8cSGhYGf1bjKvSyIlN9SlgqU59J9Ul56QJLCovYcBnfmJRD
 q6aLBlqsk7zmebygt0OPCeF5TLKGokvEcikOnaCurlpsi+kPxbBWQrZuG1kqY21lmCcZ
 3xF9QLcn1wTH5Aw6y8NGMxumMK6ob4Yp4Odcw9uoMz45IJ5PJAb6xDLzXVmKOb/f79pv
 oVNGbJSXYKtNM4EOmduPLzVooWUbOD9Ly63UwrLi11GBnoMikbrVq7T5U6J/Xx64KBWO
 fmdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TiljjiRdL3J7XgA9lRW8mh7Q8UMy2rckFdpaiD+6ujw=;
 b=pv/+1KN0350WZr2/TFSyO5dKsYjRFY0abVwUejDR2iuIVKJRwUvHc6psettzqJwwG3
 NWQa79ijahHTsVTAJNePNzerZuDUBL06Db0Sthfq495YeO5cbzFAMAmGkEwytzUu7y8+
 ZU2K1zaNKfdfNOfOq7YJLV7V9IwAjEB+6qJhJGPbUugWtY6DogjAUaLm9hM+l7Dm1GtB
 XXZIs3GHOpEgTjrbqfzqnoLugVoaj5gjU7BRp338x9oYNz1q7rRMA8HS3gTGV3M7r50l
 YTFnPR3sHYpEiscTDLPBC3BQaTCSS/VzVNawombzMoeK7hWEWdHht35uUyA9HVhYUbj3
 KUPg==
X-Gm-Message-State: AJIora/ml0iOYlnFjChHNYFa/U0+xr7GOEo5z915/cej5QMZGokGTcOQ
 DaZOez03rHiwmBktCZEGDLTfyCfLLZXeW1A1dBI=
X-Google-Smtp-Source: AGRyM1sj7CHKLLCJA3ZngRRcjw+xywD9YKDbSReMjh5p7lbqdpuRzGLay2un7mt8GHo/w/Z9ge1Msi88eyTx3z6We6w=
X-Received: by 2002:a19:6d0d:0:b0:48a:8b3c:e28 with SMTP id
 i13-20020a196d0d000000b0048a8b3c0e28mr4826021lfc.265.1658900360081; Tue, 26
 Jul 2022 22:39:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220717121124.154734-1-tmaimon77@gmail.com>
 <20220718125155.GA40038@minyard.net>
 <CAP6Zq1haOErfj2HZkqKwXZKr3+QvWP2VYK6QQOH5cjHYJ2rV0w@mail.gmail.com>
 <20220726194708.GO3834@minyard.net>
In-Reply-To: <20220726194708.GO3834@minyard.net>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Wed, 27 Jul 2022 08:39:08 +0300
Message-ID: <CAP6Zq1hHXiZw2a6+o30N-GUhcA_ZJoYH+wZa8AzLu3NmYST+kw@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On Tue, 26 Jul 2022 at 22:47, Corey Minyard wrote:
 > > On Tue, Jul 26, 2022 at 10:41:38PM +0300, Tomer Maimon wrote: > > Hi
 Corey, > > > > > > On Mon, 18 Jul 2022 at 15:51, Corey Minyard wrote: > [...]
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmaimon77[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.46 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oGZlW-00032s-VV
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

Hi Corey,

On Tue, 26 Jul 2022 at 22:47, Corey Minyard <minyard@acm.org> wrote:
>
> On Tue, Jul 26, 2022 at 10:41:38PM +0300, Tomer Maimon wrote:
> > Hi Corey,
> >
> >
> > On Mon, 18 Jul 2022 at 15:51, Corey Minyard <minyard@acm.org> wrote:
> > >
> > > On Sun, Jul 17, 2022 at 03:11:22PM +0300, Tomer Maimon wrote:
> > > > This patch set adds Arbel NPCM8XX Keyboard Controller Style (KCS) support to
> > > > KCS NPCM driver.
> > > >
> > > > The NPCM KCS driver tested on NPCM845 evaluation board.
> > >
> > > This seems reasonable, I've pulled it into my tree.  If anyone has any
> > > issues with this, please respond.
> > >
> > > -corey
> > >
> > > >
> > > > Tomer Maimon (2):
> > > >   dt-bindings: ipmi: Add npcm845 compatible
> > > >   char: ipmi: modify NPCM KCS configuration
> > > >
> > > >  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 5 +++--
> > > >  drivers/char/ipmi/Kconfig                                  | 6 +++---
> > > >  2 files changed, 6 insertions(+), 5 deletions(-)
> > > >
> > > > --
> > > > 2.33.0
> > > >
> >
> > Sorry but I need to do a little fix in the document file.
> >
> > Can I do it or have you already applied the patches?
>
> At this point I'd prefer a patch on top of what is there.  5.19 isn't
> released yet, so the window isn't open, but that will happen soon and I
> don't want to rebase at this point.
O.K. thanks,
I will wait until 5.19 is released and then I will send the patch.
>
> -corey
>
> >
> > Thanks,
> >
> > Tomer

Best regards,

Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
