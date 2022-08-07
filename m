Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FDC58BA27
	for <lists+openipmi-developer@lfdr.de>; Sun,  7 Aug 2022 10:04:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKbGi-0002kP-RJ; Sun, 07 Aug 2022 08:04:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tmaimon77@gmail.com>) id 1oKbGg-0002k7-TY
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 08:04:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wbqZPNw/u0ToigexI/dsHqI9t2TLFKvEVIsy4UYz3Ss=; b=RQ1yogru3xHRFxzO3VXymYptbB
 E6b6EjEkIdu+vJ68KT+2mSk4Md4HtPvXKTYQwKzsmGUaOZ73salaNsCjlXPuU6YM/Howgvx/4fxej
 y9vAP5DH+1tjHYjinrt6iuc61/VW3fo7huGAcN8P4Sb2t7p9S/agZWAzEIKwhOp5vsl8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wbqZPNw/u0ToigexI/dsHqI9t2TLFKvEVIsy4UYz3Ss=; b=YwjP9FCRAvrA1flOz95vXmJiMp
 oiN54LnNbd15t+1TzpAbcs+wQzdPuWWR+Obbkkb14mGos7olxKvzQA0MVGdp1WmjD6MXi5p/uSKVR
 zyWSREWIXWmQVQBAsPCMj0lm1lUGERM+BtG9fPiJ1n4ELGryl/Uf+V5h/pIAI0EmJD/Y=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKbGg-0003vt-3S
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 08:04:14 +0000
Received: by mail-lf1-f41.google.com with SMTP id z6so1342068lfu.9
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 07 Aug 2022 01:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=wbqZPNw/u0ToigexI/dsHqI9t2TLFKvEVIsy4UYz3Ss=;
 b=VElqQMAMXX99FoV8nlqKtzEJcGD8mpU+7/rYkO+65ivGoQyQjaXngsiYjHQBoD2Sv/
 7elgVO6r2jhr6v4N457dHkz5GNx9UdCTnPBcpUqKF1vKbP3K7vnUaKeT5QHHlI3RtWDv
 tj1j82fLZj/gYpDdNVDFNhdjWdh74l04KVuGPf4+V+eDewuDCUigkvmSrIeY1jLcpoi4
 Wb3DEeu1BhgzD2T42LTUlddDzGXMyW1LNWTj4LlNtM3tqBMcm0HPGLqYEMDyNftvMLk8
 TLaBxIyWQIf7mVXsq+xucxwxkIezH79blD4mAJexaqSfoZ/DvwfFcUzNP+xaiF8EMIbz
 XLiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=wbqZPNw/u0ToigexI/dsHqI9t2TLFKvEVIsy4UYz3Ss=;
 b=qDD/om/QHvHGY+4pPc3tcTmMt8ahuTXbDm0Op6xlaQIr55nfxZLWlEwQaxz8zTEvBi
 yNjJPnHw2oYA4rtDSnp8npfucL2p712KXVeGm0jbABVLWROVrR/JhcC4waSJV9kAuaHl
 QYk+kbkiF9cTPQX0swVPuVXtQSFwtsBFYCl+OSgaI8dEzjnajQ3rlDbvuLXCdzlvrzea
 M+6RU+P3jcukpUQYKsGBW3zO8zTMQSSG3m9prXp3zRuzfUAFnBEyKV4d1sUeQCtNLOoc
 a7UlBfO+F3sgVTDv7Dfs5sUSL9Zi55PUbALexYnz0P9ohSGkPm8y5wi7JAlWXmUA4Gub
 5kqQ==
X-Gm-Message-State: ACgBeo03ndPPpXlxCdt6PSUYy3nadpnicj/SOl/QYhu8PhSYLAZSnAcM
 YkY5ZNR4g6RH/r3S2+/vr3V5xJp4+tyrgMoql24=
X-Google-Smtp-Source: AA6agR6/Luobxrd0WQHX+M2Qy7TUyQeaPAkewCJqh7H//v0Br55Yb45xKGi5pP/UQUv04JEO08mkbT0IYoxDieGNVyw=
X-Received: by 2002:a05:6512:692:b0:48a:f5fb:188c with SMTP id
 t18-20020a056512069200b0048af5fb188cmr4991596lfe.111.1659859447556; Sun, 07
 Aug 2022 01:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <20220805115827.GG3834@minyard.net>
In-Reply-To: <20220805115827.GG3834@minyard.net>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Sun, 7 Aug 2022 11:03:56 +0300
Message-ID: <CAP6Zq1gfvEpUF-TKhA8EdJqBtwaVvJR3qxtn=8Li4swHB6sDYQ@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, Thanks for your comment. On Fri,
 5 Aug 2022 at 14:58, 
 Corey Minyard wrote: > > On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer
 Maimon wrote: > > Add to npcm845 KCS compatible string a fallback to npcm750
 KCS compatible > > [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.41 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmaimon77[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oKbGg-0003vt-3S
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

Hi Corey,

Thanks for your comment.

On Fri, 5 Aug 2022 at 14:58, Corey Minyard <minyard@acm.org> wrote:
>
> On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
> > Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> > string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> >
> > Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > index cbc10a68ddef..4fda76e63396 100644
> > --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > +++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > @@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
> >  Required properties:
> >  - compatible : should be one of
> >      "nuvoton,npcm750-kcs-bmc"
> > -    "nuvoton,npcm845-kcs-bmc"
> > +    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
>
> This is just wrong.  The compatible is supposed to identify the device,
> not the board the device is on.  I think compatible here should be
> "npcm7xx-kcs-bmc", and just use that everywhere.  It's fine if that is
> used on a board named npcm845.
The NPCM8XX is not a board, The Nuvoton NPCM8XX is a fourth-generation
BMC SoC device family.
>
> -corey
>
> >  - interrupts : interrupt generated by the controller
> >  - kcs_chan : The KCS channel number in the controller
> >
> > --
> > 2.33.0
> >

Best regards,

Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
