Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E4D58BACA
	for <lists+openipmi-developer@lfdr.de>; Sun,  7 Aug 2022 14:13:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKf9V-0006YF-GG; Sun, 07 Aug 2022 12:13:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1oKf8k-0006Xy-1d
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 12:12:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zQGkdKu5K+mMGtINb8IUwXhsmEcLqR+snZ46Vc8nWxk=; b=GodrloreZx00j7u1Mra4W9PxjD
 u9voaAVqirtFuMBNAs8rsJmvSxBnsgXcdXCBDDM5wGTSLdRZA6sW7PVxMl1hqHOzUHlnyuEY6/uhU
 oGvnAxCg2vg7a1xg0tRcOFriV+52FTj/3nQfkzdB6FXlZ/D0wLxYSt/Uf/ur6iJE8vKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zQGkdKu5K+mMGtINb8IUwXhsmEcLqR+snZ46Vc8nWxk=; b=eUhqr0HpwaeL/UZmo9vLZHDOn5
 y/ubaR7jIx5X48aVGLof5UNEFMRrfOXVHIfsqC+FbslnOnLvipfNDMQ4vJ4x42StyQ51B7NgOFb6R
 jWU7xS5p1rbtjwt5yeGtznudJzkeK/oVOxFq5JC2wf4IyRpiRBcbjfdNdHDQlTH2MFd0=;
Received: from mail-qk1-f174.google.com ([209.85.222.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKf8F-0006d0-QX
 for openipmi-developer@lists.sourceforge.net; Sun, 07 Aug 2022 12:12:00 +0000
Received: by mail-qk1-f174.google.com with SMTP id o1so4782385qkg.9
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 07 Aug 2022 05:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc;
 bh=zQGkdKu5K+mMGtINb8IUwXhsmEcLqR+snZ46Vc8nWxk=;
 b=X8rltdjmNBHQeJgcjT5qKvzBk79eACG1asdlFesZiy6mpB7LeCJF7SKsbdbpwbbRGU
 L5JPWtm6ii7OHXAzUWdcpmbBkfv9U6p1dxIbRbxH0ypFHqyTDdp5hx+UgzNqLvo3kt/q
 id4+yVLZ6A9XqLg4LE5kn5bB6eCDMWaXeK5W4IwzFhzV310nTnhLk4m1lBrYmCz5n3Ye
 ewSU1EmiL4x5YlqhdlFo7BTHk3sBl9jJj3NmnOirRC5pG9IBweefeZw3NBV6JpUoKHCY
 sPLKEk8/am2VcYKbwolANziEuKRbNbGGRN+bvhbPgQL9e+Mum1TwIOeuzII7ALtG4bfd
 yzNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc;
 bh=zQGkdKu5K+mMGtINb8IUwXhsmEcLqR+snZ46Vc8nWxk=;
 b=J5H9U+lYRw26yqKRr9mKZo7DMRPL8bgLrdvfEt4X+4zTRzlWGASq9dY/BO+wNBRdOr
 pCRLs23q8t5zcvpa2R/t44LTQ4D7dVWaw45oZc3/UWPm2CF2XVBHQKjMP4ARMa7BjeQS
 t+VUT4ghn4pC7ShQXPYabnr/8yai7e3c/3dN0I4GCp0+UbSAs7mo73B0jAqEraAzPxGD
 RAGbVLOvoQ9W4LuNDk93pu40UaihVmD2Zd7FWtvtCQK+r4barTe08jKcoEhF/CmmX5q0
 5QxA0rTOvDFQ7mAf2xnwPbIq8a8e7V+mcxICTLa7LNGTyUTfvPLHB+196BAXGn7t+XNf
 pmcA==
X-Gm-Message-State: ACgBeo1TbPdt/wtxRK/wasrG5flG7Sdfro0al9OKaDUcgZTpLZeY+/0G
 E/h0b1V028jUd5OynvO0+A==
X-Google-Smtp-Source: AA6agR6tyvVQVxivjpXI2f1/rmVg+DidYfAL1meKadBKrz4FxbrEPGrSK2B9b9rWSowTqapwQ782xQ==
X-Received: by 2002:a05:620a:460c:b0:6b8:fbfd:b963 with SMTP id
 br12-20020a05620a460c00b006b8fbfdb963mr11002856qkb.140.1659874301700; 
 Sun, 07 Aug 2022 05:11:41 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 y8-20020a37f608000000b006b66510f4f7sm6896108qkj.6.2022.08.07.05.11.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Aug 2022 05:11:41 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:18ee:4123:89ce:5c5d])
 by serve.minyard.net (Postfix) with ESMTPSA id B96051800FA;
 Sun,  7 Aug 2022 12:11:39 +0000 (UTC)
Date: Sun, 7 Aug 2022 07:11:38 -0500
From: Corey Minyard <minyard@acm.org>
To: Tomer Maimon <tmaimon77@gmail.com>
Message-ID: <20220807121138.GL3834@minyard.net>
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <20220805115827.GG3834@minyard.net>
 <CAP6Zq1gfvEpUF-TKhA8EdJqBtwaVvJR3qxtn=8Li4swHB6sDYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP6Zq1gfvEpUF-TKhA8EdJqBtwaVvJR3qxtn=8Li4swHB6sDYQ@mail.gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Aug 07, 2022 at 11:03:56AM +0300, Tomer Maimon wrote:
 > Hi Corey, > > Thanks for your comment. > > On Fri, 5 Aug 2022 at 14:58,
 Corey Minyard <minyard@acm.org> wrote: > > > > On Thu, Aug 04, 2 [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1oKf8F-0006d0-QX
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

On Sun, Aug 07, 2022 at 11:03:56AM +0300, Tomer Maimon wrote:
> Hi Corey,
> 
> Thanks for your comment.
> 
> On Fri, 5 Aug 2022 at 14:58, Corey Minyard <minyard@acm.org> wrote:
> >
> > On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
> > > Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> > > string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> > >
> > > Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > > index cbc10a68ddef..4fda76e63396 100644
> > > --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > > +++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> > > @@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
> > >  Required properties:
> > >  - compatible : should be one of
> > >      "nuvoton,npcm750-kcs-bmc"
> > > -    "nuvoton,npcm845-kcs-bmc"
> > > +    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
> >
> > This is just wrong.  The compatible is supposed to identify the device,
> > not the board the device is on.  I think compatible here should be
> > "npcm7xx-kcs-bmc", and just use that everywhere.  It's fine if that is
> > used on a board named npcm845.
> The NPCM8XX is not a board, The Nuvoton NPCM8XX is a fourth-generation
> BMC SoC device family.

Ok, but same principle applies.

If the device is exactly the same, then you would only use one of the
"npcm7xx-kcs-bmc" and put that in both device trees.  You can use
"nuvoton,npcm750-kcs-bmc", it's really not that important.  Or even
"nuvoton,npcm-kcs-bmc"

If the device has a minor difference that can be expressed in a 
parameter, then create a parameter for it.

If the device has enough differences that a parameter or two doesn't
cover it, then you put either nuvoton,npcm750-kcs-bmc or
nuvoton,npcm750-kcs-bmc in the device tree.  Not both.  Then you need
two entries in the of_device_id array and you use the data field or
something to express the difference.

Since there appears to be no difference, just put
"nuvoton,npcm750-kcs-bmc" in the npcm845 and I will drop the patch
adding all this.  Then a patch can be added saying it applies to both
the 7xx and 8xx series of BMC SOCs.  If you want to change the name,
then a patch will be needed for that, but then you will need multiple
entries in your device tree, but you would not document it as such, as
there would only be one that applies for this kernel.

I'm pretty sure the only reason to have muliple compatible entries in a
device tree is to cover multiple kernels where the name changed.

-corey

> >
> > -corey
> >
> > >  - interrupts : interrupt generated by the controller
> > >  - kcs_chan : The KCS channel number in the controller
> > >
> > > --
> > > 2.33.0
> > >
> 
> Best regards,
> 
> Tomer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
