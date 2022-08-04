Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E75589DF9
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Aug 2022 16:57:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oJcHs-0001xU-9h; Thu, 04 Aug 2022 14:57:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tmaimon77@gmail.com>) id 1oJcHq-0001xG-IO
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 14:57:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8JNbodMueoEd4ImyROxuslz2NcHFXRVvVz0CY4xXL6Q=; b=TfpE2+kjnBijhX5YzTujCqYZbi
 2UrvkUKYwpXZ4rt05yuCLr2WXQVZ4GJm48VKiOFxQFsWWxikhv3ooUES+fRdPlsZIYwLIk/RugUzp
 IFIeLb4HESxvwKMTwSjTO1Qj6U3OJZHH4URQL5luKXVmVFgywbmE+amQdgbmJ4fllK/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8JNbodMueoEd4ImyROxuslz2NcHFXRVvVz0CY4xXL6Q=; b=MPcE6vIKxmYDkQJWOAUO82njnP
 MuEjDK8nVkkVpB+hwm82bqv9Wl1nX7hQpTaqAlscrOXa/2DfW78gyRIyykPZtHbtKAl/auaOzyJ1S
 MQMLSragcQco+Ka/yQmvwTo4vW/74fLsFKDG87IJgNTNMs2L5T4v/gOydpIu0zhgZIHM=;
Received: from mail-lf1-f50.google.com ([209.85.167.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oJcHp-003IrA-P6
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 14:57:22 +0000
Received: by mail-lf1-f50.google.com with SMTP id r17so6199657lfm.11
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 04 Aug 2022 07:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=8JNbodMueoEd4ImyROxuslz2NcHFXRVvVz0CY4xXL6Q=;
 b=bUH+Fm34iVCV0p1rnEdX7I6T1s493igT+HExDi/8Bhg86px9EzTwZTVvUSbf23x0of
 mUq+/03uJNyMCFifoCjpjyuHVsojpxUnto7vAtLNf6K34nXhpCkorYve4tN9A0x1IN+j
 7BzjyLh0v7qiC4xxeyC0Nqz9xefm77pozxJFiUCQLTKO5B0jpb5LLj2+twXU/M8SGVEN
 SL/qH7MYCFzgUxfeNB9Uq7GsDPBCSMVr+gMTlehGk1R5bHihdhOhNtJ8IR7cEJoSIFJV
 wCz/688Im08X6cSOzhAuLEmrg2elXqS1NKam5DRQsQr1Bm9kVLcdvnK7PGcvf+vyR6jS
 dDyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=8JNbodMueoEd4ImyROxuslz2NcHFXRVvVz0CY4xXL6Q=;
 b=zu0270kAtjfGBx5ygZOV9stKSNaJYK2F5jrlf0FKQHTdO/PnNE8n2TZp5LNvbK7geM
 JTN2oE3rOuG+7ABY4JiSDQ1IWOEBlXfxx2N4s2bG1UAwu8SqIo4+Yak5l6G6knMf7/D8
 zdnA/HoBsc9M5xom1NY0yVKSe3eLasHsvSyHI06epRrnxmm3ZhTfTmXnHsCEZUEfUV7e
 eTe78rCyiEc8hL4603aogsbyx1uhTUOmMtMGF+OaWSXSTbuNbxGYGz4JyK8klXQwzuIN
 JE3f8yD67W3l4ZhrgxYDyi8fP5BwHUT1orwZwsLMT/hHnKRN+CwIxq8wGLtJmLl4/mNc
 jdow==
X-Gm-Message-State: ACgBeo3pZn2DjnAkbf7YF3KPW4/c0DTwoP69vXzJmjHQqaW5c/eeT6YQ
 EiICAQ5Ca6JpJos8D4PXSyM2V9sjDhgi+kBH97Q=
X-Google-Smtp-Source: AA6agR7OOuSag4FDjo6Dbl4xoBFIuVP0LQIgpdmgsRMbcMKMGKSS86wDo0KAR/8Kfe7Qgrw6h0G1IyqONkTOqsC5PMY=
X-Received: by 2002:a05:6512:3990:b0:48a:ae02:1000 with SMTP id
 j16-20020a056512399000b0048aae021000mr787247lfu.401.1659625035106; Thu, 04
 Aug 2022 07:57:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220717121124.154734-1-tmaimon77@gmail.com>
 <20220718125155.GA40038@minyard.net>
 <CAP6Zq1haOErfj2HZkqKwXZKr3+QvWP2VYK6QQOH5cjHYJ2rV0w@mail.gmail.com>
 <20220726194708.GO3834@minyard.net>
 <CAP6Zq1hHXiZw2a6+o30N-GUhcA_ZJoYH+wZa8AzLu3NmYST+kw@mail.gmail.com>
 <20220727154700.GS3834@minyard.net>
In-Reply-To: <20220727154700.GS3834@minyard.net>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Thu, 4 Aug 2022 17:57:03 +0300
Message-ID: <CAP6Zq1gQkoRqMc2+7ZDjwdyyfAhF+PuNjSQfSSS7yQojXS__mw@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, Sorry, miss this email... On Wed, 27 Jul 2022 at
 18:47, Corey Minyard wrote: > > On Wed, Jul 27, 2022 at 08:39:08AM +0300,
 Tomer Maimon wrote: > > Hi Corey, > > > > On Tue, 26 Jul 2022 at 22:47, Corey
 Minyard wrote: > > > [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmaimon77[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.50 listed in list.dnswl.org]
X-Headers-End: 1oJcHp-003IrA-P6
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

Sorry, miss this email...

On Wed, 27 Jul 2022 at 18:47, Corey Minyard <minyard@acm.org> wrote:
>
> On Wed, Jul 27, 2022 at 08:39:08AM +0300, Tomer Maimon wrote:
> > Hi Corey,
> >
> > On Tue, 26 Jul 2022 at 22:47, Corey Minyard <minyard@acm.org> wrote:
> > >
> > > On Tue, Jul 26, 2022 at 10:41:38PM +0300, Tomer Maimon wrote:
> > > > Hi Corey,
> > > >
> > > >
> > > > On Mon, 18 Jul 2022 at 15:51, Corey Minyard <minyard@acm.org> wrote:
> > > > >
> > > > > On Sun, Jul 17, 2022 at 03:11:22PM +0300, Tomer Maimon wrote:
> > > > > > This patch set adds Arbel NPCM8XX Keyboard Controller Style (KCS) support to
> > > > > > KCS NPCM driver.
> > > > > >
> > > > > > The NPCM KCS driver tested on NPCM845 evaluation board.
> > > > >
> > > > > This seems reasonable, I've pulled it into my tree.  If anyone has any
> > > > > issues with this, please respond.
> > > > >
> > > > > -corey
> > > > >
> > > > > >
> > > > > > Tomer Maimon (2):
> > > > > >   dt-bindings: ipmi: Add npcm845 compatible
> > > > > >   char: ipmi: modify NPCM KCS configuration
> > > > > >
> > > > > >  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 5 +++--
> > > > > >  drivers/char/ipmi/Kconfig                                  | 6 +++---
> > > > > >  2 files changed, 6 insertions(+), 5 deletions(-)
> > > > > >
> > > > > > --
> > > > > > 2.33.0
> > > > > >
> > > >
> > > > Sorry but I need to do a little fix in the document file.
> > > >
> > > > Can I do it or have you already applied the patches?
> > >
> > > At this point I'd prefer a patch on top of what is there.  5.19 isn't
> > > released yet, so the window isn't open, but that will happen soon and I
> > > don't want to rebase at this point.
> > O.K. thanks,
> > I will wait until 5.19 is released and then I will send the patch.
>
> Oh, sorry I wasn't clear.  You can send it now, I just don't want to
> rebase what I have already.  Just a new patch on top of it, and I'll get
> it in to 5.19.
>
> -corey

Sent a patch now.

Best regards,

Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
