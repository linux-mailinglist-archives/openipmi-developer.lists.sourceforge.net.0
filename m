Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5849558BBC5
	for <lists+openipmi-developer@lfdr.de>; Sun,  7 Aug 2022 18:06:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKimr-00075M-TC; Sun, 07 Aug 2022 16:05:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1oKimr-00075C-2z
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 16:05:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7uXlWgTEohYxQ85BoECVY/ep9kMm6DW6Jlta0tAZuF8=; b=Dj9T6MyD1/3C4QcyqdjSBX1End
 WxVr88ZQ5Rm2a90YWu9OXgRZkDyFsSLl6b4Qqq46dZg4zn9xX5SLl8DIs728nYRrOgjcmG6sIKy5x
 G7uIVQnh6vshFThETfXeiPsuMaNvlNP2r4laFRCsb+7s3huBJ8irxAhjL2hpXoqVlB3Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7uXlWgTEohYxQ85BoECVY/ep9kMm6DW6Jlta0tAZuF8=; b=XLxPyvfm/rxDg58TUYJ7nOdlZ6
 65M/6bgk4mejegCk4TIl66KA5eOEJsaykpWVXr3gOnFa63Loiiyvzjb+m9t5xpVGuuz64NrP1kEnh
 O7mazWQahaybeJHihfiZYhcSlVVR+nyMpvKSjmGR+1wX0Pw4Tjuh+ojlWXhWLKfypsOI=;
Received: from mail-qk1-f174.google.com ([209.85.222.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKimo-0007N3-R4
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 16:05:55 +0000
Received: by mail-qk1-f174.google.com with SMTP id w6so5003876qkf.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 07 Aug 2022 09:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc;
 bh=7uXlWgTEohYxQ85BoECVY/ep9kMm6DW6Jlta0tAZuF8=;
 b=EvHSbDNccf0snsRpgwYGhmLSWdQMVy+oeswA9ebG69tnbHOwO9NlY3PoOLjQT4BkGH
 /r3PLj7ywbrZeOhzqI6eH5Gmu7SBMh8hgvdV5q6c9rqjvnbvgJEk/1Uut0XQqAILbesQ
 SVXEJnwo2j3qbSkO0fkLZb4JkHKyqJ/DcDTqJAj2SgckTgnmQa4feQR76mxYwd0fN99P
 AulCq3TQx/wqxuYUg/VK+VxEu/tzkKeHD59iEX6uyek43aRXBqIc3lp5ZKJ2rLWBwdjc
 qDtKH2lEgi+YAxwyYDV+FlevhWc7bGMUeSYt3DOUO5mhPmS8lxiZbau4GvzyQTtENsWP
 1MXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc;
 bh=7uXlWgTEohYxQ85BoECVY/ep9kMm6DW6Jlta0tAZuF8=;
 b=e0f7EbUn+Rak/6BDtJFtAyHeVEOaihQVGeLldG2nLZUvx/+lu/UKUuT34SyP+1T0eb
 qbCgkNTSCgRph8GWDf/W4BMWqZhSBzd8WuGt+gc07n7xrwd8jTbrCiGoBLct+75WtZDQ
 4p/rnEbEXBR55oOW4DO3/3rRBv8tGsecOOaBcUTcIX1OoKcCZ+NnpnH2DxeQlQd5Phy5
 y1b54YM/rCT4jhss9g7Pp3hZmjUpwUs1JooxtEiLTgZX6E2P7pbzZur26+gTXSwjQqpC
 Ts9a+oKQkW3+9mSIHs3tBXy5vShWxBM+oZ7zE7Z40Q4c/1e3+hd65T5WF5xJg2Vsg1CG
 7PZA==
X-Gm-Message-State: ACgBeo278/PiF2y1IAvtyk+28j30QSofnGpFnt7Kt0fIcQrqzCyL+qU4
 KvOSM61THCA4eHm6htwH3w==
X-Google-Smtp-Source: AA6agR7W0fL0etBw0UI6nbPmKvtMZORG9mGYM35ublkn8y6s3O213D9Bej3/lrThwHkRKLA3SQFEPA==
X-Received: by 2002:a05:620a:4103:b0:6b9:3ee8:ed41 with SMTP id
 j3-20020a05620a410300b006b93ee8ed41mr3820288qko.264.1659888348837; 
 Sun, 07 Aug 2022 09:05:48 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 m22-20020ac866d6000000b0031f229d4427sm6206958qtp.96.2022.08.07.09.05.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Aug 2022 09:05:48 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:18ee:4123:89ce:5c5d])
 by serve.minyard.net (Postfix) with ESMTPSA id 0563E1800BB;
 Sun,  7 Aug 2022 16:05:47 +0000 (UTC)
Date: Sun, 7 Aug 2022 11:05:45 -0500
From: Corey Minyard <minyard@acm.org>
To: Tomer Maimon <tmaimon77@gmail.com>
Message-ID: <20220807160545.GM3834@minyard.net>
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <20220805115827.GG3834@minyard.net>
 <CAP6Zq1gfvEpUF-TKhA8EdJqBtwaVvJR3qxtn=8Li4swHB6sDYQ@mail.gmail.com>
 <20220807121138.GL3834@minyard.net>
 <CAP6Zq1iL7okjGU8_-CnrBnRUzjLKPD8FNw_oYso-jbthbeR1iQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP6Zq1iL7okjGU8_-CnrBnRUzjLKPD8FNw_oYso-jbthbeR1iQ@mail.gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Aug 07, 2022 at 05:54:28PM +0300, Tomer Maimon wrote:
 > On Sun, 7 Aug 2022 at 15:11, Corey Minyard <minyard@acm.org> wrote: > >
 > > On Sun, Aug 07, 2022 at 11:03:56AM +0300, Tomer Maimon wrote [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.174 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1oKimo-0007N3-R4
Subject: Re: [Openipmi-developer] [PATCH v2] dt-binding: ipmi: add fallback
 to npcm845 compatible
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

On Sun, Aug 07, 2022 at 05:54:28PM +0300, Tomer Maimon wrote:
> On Sun, 7 Aug 2022 at 15:11, Corey Minyard <minyard@acm.org> wrote:
> >
> > On Sun, Aug 07, 2022 at 11:03:56AM +0300, Tomer Maimon wrote:
> > > Hi Corey,
> > >
> > > Thanks for your comment.
> > >
> > > On Fri, 5 Aug 2022 at 14:58, Corey Minyard <minyard@acm.org> wrote:
> > > >
> > > > On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
> > > > > Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> > > > > string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> > > > >
> > > > > Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > > > > index cbc10a68ddef..4fda76e63396 100644
> > > > > --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > > > > +++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > > > > @@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
> > > > >  Required properties:
> > > > >  - compatible : should be one of
> > > > >      "nuvoton,npcm750-kcs-bmc"
> > > > > -    "nuvoton,npcm845-kcs-bmc"
> > > > > +    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
> > > >
> > > > This is just wrong.  The compatible is supposed to identify the device,
> > > > not the board the device is on.  I think compatible here should be
> > > > "npcm7xx-kcs-bmc", and just use that everywhere.  It's fine if that is
> > > > used on a board named npcm845.
> > > The NPCM8XX is not a board, The Nuvoton NPCM8XX is a fourth-generation
> > > BMC SoC device family.
> >
> > Ok, but same principle applies.
> >
> > If the device is exactly the same, then you would only use one of the
> > "npcm7xx-kcs-bmc" and put that in both device trees.  You can use
> > "nuvoton,npcm750-kcs-bmc", it's really not that important.  Or even
> > "nuvoton,npcm-kcs-bmc"
> If we use "nuvoton, npcm-kcs-bmc" we should take care of backward dts
> compatibility, and I am not sure we like to change NPCM KCS driver.
> >
> > If the device has a minor difference that can be expressed in a
> > parameter, then create a parameter for it.
> >
> > If the device has enough differences that a parameter or two doesn't
> > cover it, then you put either nuvoton,npcm750-kcs-bmc or
> > nuvoton,npcm750-kcs-bmc in the device tree.  Not both.  Then you need
> > two entries in the of_device_id array and you use the data field or
> > something to express the difference.
> >
> > Since there appears to be no difference, just put
> > "nuvoton,npcm750-kcs-bmc" in the npcm845 and I will drop the patch
> > adding all this.  Then a patch can be added saying it applies to both
> > the 7xx and 8xx series of BMC SOCs.  If you want to change the name,
> > then a patch will be needed for that, but then you will need multiple
> > entries in your device tree, but you would not document it as such, as
> > there would only be one that applies for this kernel.
> 
> It little bit confusing to use nuvoton,npcm750-kcs-bmc that are
> related to NPCM7XX for NPCM8XX KCS.

A little, but it's not unusual.

> We can use the generic name "nuvoton, npcm-kcs-bmc" as you suggested
> above but we should take care of backward dts compatibility, and I am
> not sure we like to change NPCM KCS driver.
> 
> We had a disscation with Arnd, Arnd asked us to use a fallback as we
> did here if NPCM8XX device module is similar to NPCM7XX module:
> https://lore.kernel.org/lkml/20220522155046.260146-5-tmaimon77@gmail.com/
> 
> I think we should use a fallback to describe the NPCM8XX KCS in the
> dt-binding document.

I'm ok with that option.  I guess I should have mentioned it.  Add
nuvoton,npcm-kcs-bmc to the driver's of_device_id table.  Then use that
in that compatible string in the device tree.  Leave the 750 compatible
string in the table for backwards compatibility.

There's no point in having a bunch of those strings if they are all the
same.  If a new one comes out that is different, we can handle that when
the time comes.

-corey

> >
> > I'm pretty sure the only reason to have muliple compatible entries in a
> > device tree is to cover multiple kernels where the name changed.
> >
> > -corey
> >
> > > >
> > > > -corey
> > > >
> > > > >  - interrupts : interrupt generated by the controller
> > > > >  - kcs_chan : The KCS channel number in the controller
> > > > >
> > > > > --
> > > > > 2.33.0
> > > > >
> > >
> > > Best regards,
> > >
> > > Tomer
> 
> Best regards,
> 
> Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
