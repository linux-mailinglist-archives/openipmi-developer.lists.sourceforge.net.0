Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAD658BB67
	for <lists+openipmi-developer@lfdr.de>; Sun,  7 Aug 2022 16:54:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKhg6-0005ZS-Pd; Sun, 07 Aug 2022 14:54:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tmaimon77@gmail.com>) id 1oKhg5-0005ZI-1q
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 14:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X+zhTBewnBwAZ0gofQrf7ORuRinYGAAL513LlgG86O8=; b=EUr9cpJ+487wP3hUsbZ051u7yZ
 4Qn0yeEi9wUz2PbEbECXUxEIzBM2wPguNdO7w8v7FlAKNkraOMDQqyPli0R8twxGzmNGNDzz0b9ZP
 c9aZo9Ty370pKJhP9rkZxjPRtax772OACCF4vDSd3F30G/Y0fyOJTfMxXJh2/zEqWbk8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X+zhTBewnBwAZ0gofQrf7ORuRinYGAAL513LlgG86O8=; b=PWQ7PBYYGoWUNvIlcAV/9jk3/o
 /xFsi3JcrhncVtlK5Kf5vScKr+KeOJJoFEOQ5imQr3TkGycUdOqLRnhRbzagFum4OL0JBA9NX0Ulp
 DI+KNzzlGAcNMJ6AoR7DqUHBxJVu/b9D5xBrktNlq4L6r67XW1LKftoXpCDR2FP3/Gcs=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKhfz-006pYz-7x
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 14:54:51 +0000
Received: by mail-lf1-f46.google.com with SMTP id z25so9486633lfr.2
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 07 Aug 2022 07:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=X+zhTBewnBwAZ0gofQrf7ORuRinYGAAL513LlgG86O8=;
 b=m4x10IEX8aE70An0kEaihnvqapU6S/pdtbtry7gpY0hEFprtgBrPgcbHk0+2UHV/x7
 Ws8hZhz5ZeWzBebeGYSCWaDHmG1Mgex/6i0ehkhoSZ6HTTDn0AWicby4j+iYH9JIZwef
 mmWRhL8teZMM3UuA7xFR7dhpidw5HCIGxAtgPij8/32dZfAeSjBV/RgAfMN/59Avbddk
 JVKbhTxNL9WhOYSR1wVVSGQVXJ2Yq0/Mj/yLKeEagIZ2WD5rFO9gj1froDBzHpAAVcds
 wysfNx1YmPr/+yHrYjKhACLJ21PjMGki9YUCRws5cHkAAZ1J+0CsFXWIJJNkOsM34N2N
 m5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=X+zhTBewnBwAZ0gofQrf7ORuRinYGAAL513LlgG86O8=;
 b=YQ/7vTdV6e16jwMncRP/nGED+GsrqV2lcoL3hViWeycWQ6h322rgpPGlnUCX5hKZ+j
 G9J6i1kBhInJu4qWGXo+eJH0jqy09BZy89j7R9cn95jIWU3y7P7h88u+anYuVrBzs/+/
 KdYR6p8Ugz/Vry7zCz5N+WQXc3JqjPwzjNq8hXPYtt3LXeQBDxhRpqWy5QYKWQiflayM
 eqRLdrkOvfi+EoyQTGjO72kWYbfTTm8mm5ACZBmstKY9yqt/Vuzf+v8fW+Tre27wft3A
 UTD9THhp+S9PS2Ml3LVNHHImFt0ZGyfP9cVUH553VijzcE2FUnthpu8SV6IspuBcewKv
 iQcg==
X-Gm-Message-State: ACgBeo0GuC8xx0sGIsltRYMqcaM4vesQtBEF0O5qsPE7xU0K28HIB38i
 eNss6GxWd7WHjBW9yuKQW0dTXJJbUufnvyGLD8I=
X-Google-Smtp-Source: AA6agR7We5PalU4zjjHMXJd5bxSNXx2tDuED1Tt+AS9hZRH2ejZC0M3Y/ZY1QTHV0ss3gWSpNMHH7YPOJAY/thAuQRo=
X-Received: by 2002:ac2:5f77:0:b0:48b:3886:5d55 with SMTP id
 c23-20020ac25f77000000b0048b38865d55mr4487858lfc.668.1659884080506; Sun, 07
 Aug 2022 07:54:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <20220805115827.GG3834@minyard.net>
 <CAP6Zq1gfvEpUF-TKhA8EdJqBtwaVvJR3qxtn=8Li4swHB6sDYQ@mail.gmail.com>
 <20220807121138.GL3834@minyard.net>
In-Reply-To: <20220807121138.GL3834@minyard.net>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Sun, 7 Aug 2022 17:54:28 +0300
Message-ID: <CAP6Zq1iL7okjGU8_-CnrBnRUzjLKPD8FNw_oYso-jbthbeR1iQ@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, 7 Aug 2022 at 15:11, Corey Minyard wrote: > > On Sun,
 Aug 07, 2022 at 11:03:56AM +0300, Tomer Maimon wrote: > > Hi Corey, > > >
 > Thanks for your comment. > > > > On Fri, 5 Aug 2022 at 14:58 [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmaimon77[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oKhfz-006pYz-7x
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

On Sun, 7 Aug 2022 at 15:11, Corey Minyard <minyard@acm.org> wrote:
>
> On Sun, Aug 07, 2022 at 11:03:56AM +0300, Tomer Maimon wrote:
> > Hi Corey,
> >
> > Thanks for your comment.
> >
> > On Fri, 5 Aug 2022 at 14:58, Corey Minyard <minyard@acm.org> wrote:
> > >
> > > On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
> > > > Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> > > > string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> > > >
> > > > Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > > > index cbc10a68ddef..4fda76e63396 100644
> > > > --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > > > +++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > > > @@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
> > > >  Required properties:
> > > >  - compatible : should be one of
> > > >      "nuvoton,npcm750-kcs-bmc"
> > > > -    "nuvoton,npcm845-kcs-bmc"
> > > > +    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
> > >
> > > This is just wrong.  The compatible is supposed to identify the device,
> > > not the board the device is on.  I think compatible here should be
> > > "npcm7xx-kcs-bmc", and just use that everywhere.  It's fine if that is
> > > used on a board named npcm845.
> > The NPCM8XX is not a board, The Nuvoton NPCM8XX is a fourth-generation
> > BMC SoC device family.
>
> Ok, but same principle applies.
>
> If the device is exactly the same, then you would only use one of the
> "npcm7xx-kcs-bmc" and put that in both device trees.  You can use
> "nuvoton,npcm750-kcs-bmc", it's really not that important.  Or even
> "nuvoton,npcm-kcs-bmc"
If we use "nuvoton, npcm-kcs-bmc" we should take care of backward dts
compatibility, and I am not sure we like to change NPCM KCS driver.
>
> If the device has a minor difference that can be expressed in a
> parameter, then create a parameter for it.
>
> If the device has enough differences that a parameter or two doesn't
> cover it, then you put either nuvoton,npcm750-kcs-bmc or
> nuvoton,npcm750-kcs-bmc in the device tree.  Not both.  Then you need
> two entries in the of_device_id array and you use the data field or
> something to express the difference.
>
> Since there appears to be no difference, just put
> "nuvoton,npcm750-kcs-bmc" in the npcm845 and I will drop the patch
> adding all this.  Then a patch can be added saying it applies to both
> the 7xx and 8xx series of BMC SOCs.  If you want to change the name,
> then a patch will be needed for that, but then you will need multiple
> entries in your device tree, but you would not document it as such, as
> there would only be one that applies for this kernel.

It little bit confusing to use nuvoton,npcm750-kcs-bmc that are
related to NPCM7XX for NPCM8XX KCS.
We can use the generic name "nuvoton, npcm-kcs-bmc" as you suggested
above but we should take care of backward dts compatibility, and I am
not sure we like to change NPCM KCS driver.

We had a disscation with Arnd, Arnd asked us to use a fallback as we
did here if NPCM8XX device module is similar to NPCM7XX module:
https://lore.kernel.org/lkml/20220522155046.260146-5-tmaimon77@gmail.com/

I think we should use a fallback to describe the NPCM8XX KCS in the
dt-binding document.
>
> I'm pretty sure the only reason to have muliple compatible entries in a
> device tree is to cover multiple kernels where the name changed.
>
> -corey
>
> > >
> > > -corey
> > >
> > > >  - interrupts : interrupt generated by the controller
> > > >  - kcs_chan : The KCS channel number in the controller
> > > >
> > > > --
> > > > 2.33.0
> > > >
> >
> > Best regards,
> >
> > Tomer

Best regards,

Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
