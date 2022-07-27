Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1665829EE
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Jul 2022 17:47:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oGjFk-0005NI-Da; Wed, 27 Jul 2022 15:47:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1oGjFj-0005NC-Ce
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Jul 2022 15:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rKRkz1r3/CKmoOGWsptt41HcBfvgNG2KAxM3cUlyRgg=; b=YilwYK8ddjDHdkQs7Cdwqjslay
 BSqaT3kkYW/DlmulDGEwBtVnSaDfQU/3Nw1qMm3sM8MtK7AX5NsXF7rJBdcFwdUUtPwIHkpyg8AFy
 2RGo/JR8vBgtlKIy/vVK2xG2NET00lQ95L3PRkRW4CQOOC+aVSj1kWCUvK+C3uv8uI2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rKRkz1r3/CKmoOGWsptt41HcBfvgNG2KAxM3cUlyRgg=; b=U3eExZORjooX8lyp6DNTjtF8ou
 xARxyeGdo6TOugWzWulb68bc5Ue5LgqTZ6dWCT+86ndVk+1ew9RXcu281Kyr5iLETPJDkgL4MAzJK
 q3r2hHvwkdcd2+Mip+Jg4tL/fAeGIEN96oCxcTyR773cTj22oD+cqr2sOJHwDE9HnxHE=;
Received: from mail-qt1-f180.google.com ([209.85.160.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oGjFe-000739-0W
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Jul 2022 15:47:14 +0000
Received: by mail-qt1-f180.google.com with SMTP id r21so12881815qtn.11
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 27 Jul 2022 08:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=rKRkz1r3/CKmoOGWsptt41HcBfvgNG2KAxM3cUlyRgg=;
 b=VoB86KfUBj/OZpm9xIVznbBQgZc4uhxKvVqM6lBqGHVxY4BRsFuuc3xlU3sMxZvcWa
 4b8ibsPfgRsNd5aIAwrY7NssOu/jUVv3lLJDGVPa6vRidh5+LMt14tCMnn1XwZLBFp+O
 HQ+Tj+xaYFKZ7w8ImT5JLW2a/FZn2lAizet0UGek3kuZgKbaK7WyoezQ8YGBsO8CqdJ1
 EjYv/CNb2NbNMBeCTv9ZteUxUViXcld1dSsU03u5kcWMpLMWMZYO0GH+RqTQJOpRT0K7
 sWi/+E8fjLR9kw8t4Qs+GVWY5Hcq0BKNIHpf3iWNYd5XZjYbecqJl8L+vRAphnxKscDy
 E1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=rKRkz1r3/CKmoOGWsptt41HcBfvgNG2KAxM3cUlyRgg=;
 b=zZjVzqBxTrXUQsonlz9P3pQCZicGnUPyk0OcmYR5sszWgR4LpSDkMdKhc9fOPLs4Wd
 05X8LGou2gQq5tiige1xFkHpQP1NNUbsvkGpPAX9SLe5JkfYGEsgusdxXweOFDDFmRim
 FK0RAtDFdGVfOvE/+3EkVVfIa96ksPc9NZ2F8t4mMukcNk3TisYGOgk3lKmOrDd43PcJ
 h6e0FCSK82YTXI63ml+bRwLhgHNqeIAAI/eksjTRpzeO/x5kRVw8XZ6Ltm9ML223KMPF
 pYIj55/d0BaxmhCgUj8dwi6loResKBAn1Z9jsG4TEKvWWS6lTMYiz4OL4w0V73NX3ng6
 Y5ug==
X-Gm-Message-State: AJIora+XuZFlLgI1DfTfsmK1PP81FC0987k8d7jvA/nfJQCyA6porSfm
 PxNmguI6cUQiLBk17LHybQ==
X-Google-Smtp-Source: AGRyM1syoHp48BJmUDOkb6xY/O5snpMs1dVQsCfX28eSSiv/YiQUo0sVB6pmKfpcMiJUw10Xvbbbnw==
X-Received: by 2002:a05:622a:1316:b0:31e:f3b4:1c8c with SMTP id
 v22-20020a05622a131600b0031ef3b41c8cmr19396972qtk.339.1658936823961; 
 Wed, 27 Jul 2022 08:47:03 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 de39-20020a05620a372700b006b568bdd7d5sm14091459qkb.71.2022.07.27.08.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jul 2022 08:47:03 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:495f:ee54:913c:d540])
 by serve.minyard.net (Postfix) with ESMTPSA id AF322180052;
 Wed, 27 Jul 2022 15:47:01 +0000 (UTC)
Date: Wed, 27 Jul 2022 10:47:00 -0500
From: Corey Minyard <minyard@acm.org>
To: Tomer Maimon <tmaimon77@gmail.com>
Message-ID: <20220727154700.GS3834@minyard.net>
References: <20220717121124.154734-1-tmaimon77@gmail.com>
 <20220718125155.GA40038@minyard.net>
 <CAP6Zq1haOErfj2HZkqKwXZKr3+QvWP2VYK6QQOH5cjHYJ2rV0w@mail.gmail.com>
 <20220726194708.GO3834@minyard.net>
 <CAP6Zq1hHXiZw2a6+o30N-GUhcA_ZJoYH+wZa8AzLu3NmYST+kw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP6Zq1hHXiZw2a6+o30N-GUhcA_ZJoYH+wZa8AzLu3NmYST+kw@mail.gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jul 27, 2022 at 08:39:08AM +0300, Tomer Maimon wrote:
 > Hi Corey, > > On Tue, 26 Jul 2022 at 22:47, Corey Minyard <minyard@acm.org>
 wrote: > > > > On Tue, Jul 26, 2022 at 10:41:38PM +0300, Tom [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.180 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oGjFe-000739-0W
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

On Wed, Jul 27, 2022 at 08:39:08AM +0300, Tomer Maimon wrote:
> Hi Corey,
> 
> On Tue, 26 Jul 2022 at 22:47, Corey Minyard <minyard@acm.org> wrote:
> >
> > On Tue, Jul 26, 2022 at 10:41:38PM +0300, Tomer Maimon wrote:
> > > Hi Corey,
> > >
> > >
> > > On Mon, 18 Jul 2022 at 15:51, Corey Minyard <minyard@acm.org> wrote:
> > > >
> > > > On Sun, Jul 17, 2022 at 03:11:22PM +0300, Tomer Maimon wrote:
> > > > > This patch set adds Arbel NPCM8XX Keyboard Controller Style (KCS) support to
> > > > > KCS NPCM driver.
> > > > >
> > > > > The NPCM KCS driver tested on NPCM845 evaluation board.
> > > >
> > > > This seems reasonable, I've pulled it into my tree.  If anyone has any
> > > > issues with this, please respond.
> > > >
> > > > -corey
> > > >
> > > > >
> > > > > Tomer Maimon (2):
> > > > >   dt-bindings: ipmi: Add npcm845 compatible
> > > > >   char: ipmi: modify NPCM KCS configuration
> > > > >
> > > > >  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 5 +++--
> > > > >  drivers/char/ipmi/Kconfig                                  | 6 +++---
> > > > >  2 files changed, 6 insertions(+), 5 deletions(-)
> > > > >
> > > > > --
> > > > > 2.33.0
> > > > >
> > >
> > > Sorry but I need to do a little fix in the document file.
> > >
> > > Can I do it or have you already applied the patches?
> >
> > At this point I'd prefer a patch on top of what is there.  5.19 isn't
> > released yet, so the window isn't open, but that will happen soon and I
> > don't want to rebase at this point.
> O.K. thanks,
> I will wait until 5.19 is released and then I will send the patch.

Oh, sorry I wasn't clear.  You can send it now, I just don't want to
rebase what I have already.  Just a new patch on top of it, and I'll get
it in to 5.19.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
