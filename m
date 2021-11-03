Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE73A444AEF
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 23:46:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1miP1F-00029S-Mw; Wed, 03 Nov 2021 22:46:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1miP1E-00029M-Ln
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 22:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nfe3D7clHGl1YZgkT5Ms1GXNSAPyz9/B35wGZ6BRdJA=; b=SfzeQ3at1yQgtezzP3KScXD4Ko
 Fq2fDuF2uHHCvaWlfMrhBLbNe7bAUXUVLAhP2tNUHE0xs4vo4owY9SiJ5hVy8JtRh6MoLQfnmgbv3
 6tIO3rjt9cT3rjP6aueyOJuQRWvrTB3sMQjpCBLZzVCVcDdpgbAu0GTEe1YbP+fe4Ido=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nfe3D7clHGl1YZgkT5Ms1GXNSAPyz9/B35wGZ6BRdJA=; b=N9+LJAzNu940KtsjVdBtRlGNB8
 ec2Sm7daeXldJYK4fL3GCtf6d4r1I8XUH5YdIOJRgKIiNSnFMhaFyOR2X5/IYBdRHGNF000rBWoJ0
 CNJsfluXI2FTxgBZb1r/qDYanQwYlzlcAlxEW9KRouA888bPc6+XgtzFtw01UxgYsRpU=;
Received: from mail-qv1-f52.google.com ([209.85.219.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1miP12-000Qg4-QJ
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 22:46:07 +0000
Received: by mail-qv1-f52.google.com with SMTP id i13so4061421qvm.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Nov 2021 15:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nfe3D7clHGl1YZgkT5Ms1GXNSAPyz9/B35wGZ6BRdJA=;
 b=euRqBpHe7zof/gB/pdWm00nUw8LAFIzWvENcia2nOQMD2qz1YnuiNRezwdzo38FXUo
 2q5KmkChXs2ZtGgnd9wZY/P9FTU3Zfc9V2/i3nTZFGzyHp6gU9v4SJqv8grVvOieatZX
 pvCloJ6RcCSdwejgGZXUiGz6W5m6hReIcmig8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nfe3D7clHGl1YZgkT5Ms1GXNSAPyz9/B35wGZ6BRdJA=;
 b=RVfNXUIdStC44AQSm7/bPtcKYBXvNPU4Z026QWvEcoPhtymWqd4I1TpeU9Ra6p7650
 hD7N5gafDnxjVS9cpYGqDEmAbJqvgyYtc4aVO+Uur2w+x5dscxvyP+0naBsgNXgDPOFA
 ycCpBs9SaQMlYqSHyUfLyXLBUgchoYK2/tNIQfNGJi3tL9qvfyj4ZVcDRkHsCZfMx0e/
 miqn9Nl9BpfJL60W7qyY+18Gi6zBf39tTWAz0wc9VYeMJNItkRCHkaxfaASdp37okACr
 jj1Rbqy1gBv4piX0WMU6B+jLN/oxGvb2/FHm2o4UrTO1I7v/WMBsfB3pFYAx3IXaF7n0
 QB7w==
X-Gm-Message-State: AOAM531T1fTmfXTy6Mp2sFr6XJLH0c3gtL0a1+FaC0iIm718rSPxqBWj
 FJyV3v2qhePSYUXjX38Io2Rc6EXKAIRxjt2nBmQ=
X-Google-Smtp-Source: ABdhPJyBiuFpsngJvByWOWn/hd5diNY6ZjO2cLNra4+McwuXCw/CxnR55yD0wt8Ff3yfRdCVM6/BkLr0XUpHaiHuzhk=
X-Received: by 2002:a0c:c784:: with SMTP id k4mr46084501qvj.43.1635979550880; 
 Wed, 03 Nov 2021 15:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com>
 <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
 <8db279c9-4c76-91a5-3617-a17effb2d103@linux.intel.com>
 <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
 <796e0c02-5bca-e8a9-a17f-898aafec237f@linux.intel.com>
In-Reply-To: <796e0c02-5bca-e8a9-a17f-898aafec237f@linux.intel.com>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 3 Nov 2021 22:45:38 +0000
Message-ID: <CACPK8Xcwkz1QLOvN0MiSkX+jj2NZY10--1qo7M8UMyEmQQtYmA@mail.gmail.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 3 Nov 2021 at 17:27,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
 wrote: > > On 11/3/2021 9:29 AM, Rob Herring wrote: > > It's possible that
 'clocks' was always required or that it never > > worked without clocks,
 then this change is okay. Looking at this > > patch, I have no way to know
 that. The commit message has [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jms.id.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.52 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1miP12-000Qg4-QJ
Subject: Re: [Openipmi-developer] [PATCH -next v2 5/6] dt-bindings: ipmi:
 aspeed, kcs-bmc: add 'clocks' as a required property
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
Cc: Rob Herring <robh@kernel.org>, Corey Minyard <minyard@acm.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, 3 Nov 2021 at 17:27, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>
> On 11/3/2021 9:29 AM, Rob Herring wrote:

> > It's possible that 'clocks' was always required or that it never
> > worked without clocks, then this change is okay. Looking at this
> > patch, I have no way to know that. The commit message has to explain
> > that. A commit message needs to answer WHY are you making the change.
> > You don't really need WHAT the change is as anyone can read the diff.
>
> Then what would be better? Would it be good enough if I add more detail
> commit message including a note that dtb recompiling is required? Or,
> should I change this series to treat the 'clocks' as an optional
> property? Can you please share your thought?

Make it essential. It was only by accident that things have worked
without this change.

While keeping backwards compatibility with dtbs is a goal we strive
for, in practice we use the dtb from the corresponding kernel source
tree, so as long as the patch to the driver is applied in the same
place as the patch to the device tree no systems will break.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
