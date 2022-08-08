Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE36C58CA79
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 16:23:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oL3fU-0003aC-O4; Mon, 08 Aug 2022 14:23:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1oL3fS-0003a2-Td
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 14:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c4sdWPDGZh2lpcz0JPsH1RxILtP+3NzhgDmzZEzhFwU=; b=KjOwJ9YxZvuQL3QrZs1DeuxZbl
 Quxo6y2PqVjLnAw7pscmTrz5GJ45U8rh46ajA8+I/2fAM8GiJJ2ijhAL3I8ORAFn42etKoYeoTJzX
 hCd+x8Nt0SiB0mSl1HcEvjN9JfYN0YCMHAnBtg8ygT104q8s0S//zd5qTIB6Dmv/ve0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c4sdWPDGZh2lpcz0JPsH1RxILtP+3NzhgDmzZEzhFwU=; b=QbRIpsFV8tYzuOlnU+S+IYkbdy
 Wha14cmr8JXG/IPs43FgUoTZVTGsAQfKhbgY9AQHdr76bi9m/Yt+DJK8N92o8oqpaFPSEMkgbuwdW
 SBUgqYV5un+xn7jJ6IIJl7xWCJsbtiqjuUSjP4CeBR41B9vTCQB79Uccsscpx/LRN9XY=;
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oL3fN-007raQ-8B
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 14:23:41 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 cm4-20020a056830650400b0063675a4dd74so6552897otb.10
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 07:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc;
 bh=c4sdWPDGZh2lpcz0JPsH1RxILtP+3NzhgDmzZEzhFwU=;
 b=ZnLmow2wQ4sURptG6gn+2TtbvfsVwBPnjNh04IBl4k64MgxlFvSvUC+wp+vboN3FgO
 ZyzRtpw9HTFDSJFU034ypntElaqBvXbVjdm6be2TRrV7uK16N99P1EchihnkRoKVliBv
 8GPCh+Cfbd5UnCYx4nUQfWm3niPkbwQoKkNBKaNVXIw+u4CP7aMrxBGpmDm79s1VSoSA
 UiPRyNaRR/wMj53t/PjOxllk2TJrO0AEUzOkw2dCBTrfbgVAfMHFdUe/xgp/HVbunerL
 TOsm01vtfLxY0tyde5qMUJ1Q267z+JxC2cJNOEpgBI8FwHIQPZxY08ZWIUvoyhQxNAN4
 Du/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc;
 bh=c4sdWPDGZh2lpcz0JPsH1RxILtP+3NzhgDmzZEzhFwU=;
 b=nm/4n0JU69lE7wiQ/Q5tGWbsDvIJc3+5Av5YAKSw0i1SvDjrg/7VMJav2H0SuiW6f3
 bEI2Bueba/RttXOx55Rt6wgv1pRA+22qrvwUU1APn24ll9UF9Zc5B4NTuzXTChqF68yM
 8Qxxc++5k/Wi5ffkKtxwIlSS2iD4y6Fi57Ra+sPOqGVHB3eitcZBO6O330Hrp9V4gDxL
 2ncZ33nrrsUeRgm8jnI6iCGBDxrsfvc4pQNz2w3W3vWxORcPGmXHaFW8o7IIuw6qoo+f
 gOjzxEAg5w1yPrJEn7GuDfrTfIIT9rf1IbZMeOdu2VJQb4oNkefyCOAL2zOB7PLQSQSX
 nCMA==
X-Gm-Message-State: ACgBeo2Xmqm/w3vlgylpXXarYj9KYdXS0AAvMVBWmvw+5f3+PxHRn7nC
 +6f8w+/FX76xCqmW7zqaCg==
X-Google-Smtp-Source: AA6agR5il2qTkCti/3qg75D5Tbky90Do0XQ9veQVqgQYxxPzZdL+FNKM8OV8jU27apltAUSE8fZdRA==
X-Received: by 2002:a9d:73d0:0:b0:61c:8d31:6981 with SMTP id
 m16-20020a9d73d0000000b0061c8d316981mr7149505otk.99.1659968610070; 
 Mon, 08 Aug 2022 07:23:30 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 fo34-20020a0568709a2200b0010e47737471sm2295305oab.49.2022.08.08.07.23.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Aug 2022 07:23:29 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:3153:e085:df0f:abc2])
 by serve.minyard.net (Postfix) with ESMTPSA id B79DE1800FA;
 Mon,  8 Aug 2022 14:23:28 +0000 (UTC)
Date: Mon, 8 Aug 2022 09:23:27 -0500
From: Corey Minyard <minyard@acm.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Message-ID: <20220808142327.GR3834@minyard.net>
References: <20220808075452.115907-1-tmaimon77@gmail.com>
 <da83671e-08b9-2d68-e5d3-d9b09c105bb4@linaro.org>
 <20220808122652.GO3834@minyard.net>
 <937b6737-5d55-2185-a4bc-7535fa6da85c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <937b6737-5d55-2185-a4bc-7535fa6da85c@linaro.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 08, 2022 at 03:38:45PM +0300, Krzysztof Kozlowski
 wrote: > On 08/08/2022 15:26, Corey Minyard wrote: > > On Mon, Aug 08, 2022
 at 11:11:16AM +0300, Krzysztof Kozlowski wrote: > >> On 08/08/ [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.54 listed in wl.mailspike.net]
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
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1oL3fN-007raQ-8B
Subject: Re: [Openipmi-developer] [PATCH v3] dt-binding: ipmi: add fallback
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
Cc: devicetree@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, tali.perry1@gmail.com, yuenn@google.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 openipmi-developer@lists.sourceforge.net, jic23@kernel.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Aug 08, 2022 at 03:38:45PM +0300, Krzysztof Kozlowski wrote:
> On 08/08/2022 15:26, Corey Minyard wrote:
> > On Mon, Aug 08, 2022 at 11:11:16AM +0300, Krzysztof Kozlowski wrote:
> >> On 08/08/2022 09:54, Tomer Maimon wrote:
> >>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> >>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> >>>
> >>> Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
> >>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> >>
> >>
> >> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > 
> > Ok, I think I understand how this is supposed to work.  It's not
> > altogether clear from the device tree documentation.  It says in
> > Documentation/devicetree/bindings/writing-bindings.rst:
> > 
> > - DO make 'compatible' properties specific. DON'T use wildcards in compatible
> >   strings. DO use fallback compatibles when devices are the same as or a subset
> >   of prior implementations. DO add new compatibles in case there are new
> >   features or bugs.
> 
> This documentation is short, so it explains what should be done, not
> exactly why it should be done. If we wanted "why" this would not be set
> of 4 sentences but twice more...
> 
> > 
> > AFAICT, there are no new features or bugs, just a new SOC with the same
> > device.  In general usage I have seen, you would just use the same
> > compatible.  
> 
> Most of the usages are like shown here. There are several other cases.
> It's the same with poor or good code - you will always find both patterns.

It is true, but lack of specified good examples makes it hard for people
like me to know what is right and wrong.

> 
> > However, if I understand this, that last sentence should say:
> > 
> >   DO add new compatibles in case there is a new version of hardware with
> >   the possibility of new features and/or bugs.
> > 
> > Also, the term "specific" is, ironically, vague.  Specific to what?
> 
> To me it is rather clear. Specific as in first meanings of the word (1,
> 3, 4 and 5):
> https://en.wiktionary.org/wiki/specific

Everything is always clear when you understand something :).
The really hard part about technical documentation is forgetting what
you know and approaching it from a newbie's context.

> 
> nuvoton,npcm7xx-kcs-bmc would not be definite (allows more meanings),
> unique (in terms of devices it expresses), distinctive (as two different
> devices use the same) or serving to identify one thing (again - two SoCs).
> 
> What other meaning do you think of?

It is not the definition of specific that is vague, it is what
"specific" applies to.  Is it specific to a SOC?  Specific to a board?
Specific to a particular device implementation?  Specific to a rev of
the silicon?

I will say that when I read that sentence, it means nothing to me.
If it said "DO make compatible properties as specific as possible to the
particular hardware implementation of the device" that would have more
meaning, but still leaves the reader wondering exactly how to do this.

For instance, should I put board/rev specific compatibles in?  Would it
be:

   "mycompany,myboard-rev1-npcm845-kcs-bmc", "mycompany,myboard-npcm845-kcs-bmc",
   "nuvoton,npcm845-revb-kcs-bmc", "nuvoton,npcm845-kcs-bmc",
   "nuvoton,npcm750-kcs-bmc"

That's about as specific as you can get with fallbacks for everything,
but it is too specific?  How far do you go?  There might be wiring
differences on specific board, maybe that makes a difference.

That's where good (and identified bad) examples and rationale come in.
Tell the user why something is being done and it's easier to understand
what to do in different situations.  It's not a matter of number of
sentences.  Just like code, shorter is not always better.

Anyway, I have ranted for too long.  Thank you for clearing this up for
me.

-corey

> 
> > 
> > It would be nice to have something added to "Typical cases and caveats"
> > that says:
> > 
> > - If you are writing a binding for a new device that is the same as, or
> >   a superset of another existing device, add a new specific compatible
> >   for the new device followed by a compatible for the existing device.
> >   That way, if the device has new bugs or new specific features are
> >   added, you can add workarounds without modifying the device tree.
> > 
> > Anyway, I have added this to my tree with your ack.
> 
> Fantastic, thanks!
> 
> 
> Best regards,
> Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
