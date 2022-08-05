Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7BD58AA71
	for <lists+openipmi-developer@lfdr.de>; Fri,  5 Aug 2022 14:00:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oJvzX-0008K5-07; Fri, 05 Aug 2022 11:59:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1oJvyR-0008Jy-HS
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Aug 2022 11:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=12EUweBf0CXLW8+gSAKKg9xplGZSYosR37oZCD2Y1Eg=; b=OQkrRCMiDYA9EOV9JVRUbrS1RH
 MMqhspdf2qIjhqLPSkk4Co48m1/KUz44deYWVAA48zSRjeNvI1t+nHBV5rvfuQwjB/WKzsAKM95m0
 x+OGK1ZDfNvVjfW5Ysh7p82Xuj6puxCMY9/JZCH/Sy/181SJIPMF4aR97I1NyrpuGSs4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=12EUweBf0CXLW8+gSAKKg9xplGZSYosR37oZCD2Y1Eg=; b=Kc4wLFDAp3DWd3IpYAcwjD527N
 KsQog4BonB2a7mhFKdirZCmoNJ7WGjxXP4WfrgR2nonaCatLWgUzMVvkjA/Mmf9BdAuU8epeMx47g
 MGdL9ZoRqeLPlVXthU9/0y3hf7jteDzlN16I6UfwiQH8o84Cr/7tLwAb5lEMjak4An0A=;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oJvyQ-004O4s-2g
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Aug 2022 11:58:39 +0000
Received: by mail-qt1-f177.google.com with SMTP id u12so1877029qtk.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 05 Aug 2022 04:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc;
 bh=12EUweBf0CXLW8+gSAKKg9xplGZSYosR37oZCD2Y1Eg=;
 b=VT9RgJ+oVb09HdRQa6Lq62UkO+czbOAM9zhFz3mQzPOunpvHA/Dup3iDIDNBrSTcRg
 ISw6ghOW+btNX/HqH0k2wNgSXpUg9bL7XcttzO3HDDNNozk+y3dM1mVPrsLCuGG1wDEB
 zPDESdIoCLKl87M3ZHZOLwvWZcZCGfdRYxSeLVkv1UokGzv1nB/bnYzWf+ZQw+cvxeeO
 puAKsVq9rrDGTJ2pP8KskFUBBm5iQIXGPWMPTn0Fzqb9UMJ5bQb/k0gtuQPFCBlS4+N1
 kK6jb8sG7doAKbDSIiJhVitTkmnihXzpan+QM+ytoVxdChvksAv2+bOnb1FKMbKjMQbE
 tC4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc;
 bh=12EUweBf0CXLW8+gSAKKg9xplGZSYosR37oZCD2Y1Eg=;
 b=fX/8z4I6QVsgh3Kw7XpNcS8XSEGJRF3OLOh/7gwPVz8AsEZ9BFsy2Ivef27jPi47XX
 b+kIY49UTwxnFG52WI8tOJTv9BdqN5FoShyr9iCfc8f0gZKAhEV4qlzeug586NmuApVd
 0xlKgeEQg9ughFBo19DDh5LPZRzqnZfRvUCoFRDMXzPDXnlGyK2VBTGkTQb6e4+1gi8S
 J16VPDWfAkBnBoNhv9wi899wKruvo99ChYdhGw0kHWLgzRjmvPY6M6K52k0s3o9UIPGQ
 ELJDH9NmivKfb9CVDtUwC/XOigKzONweB4wCYKLavYIJu0ao9SyseBOffkrCRzdH2xgq
 3qhw==
X-Gm-Message-State: ACgBeo3gdP2qcmCTayd3gVBoQnUuay9UrLGBEzB23Q0aAzW4ihcvyYUv
 TlQrTdwwmBZbPA2EsL/1nw==
X-Google-Smtp-Source: AA6agR4yn9VOrQApcMy/JIE89HsYzBMvrpAkEphl5ssbELPYZNrOf1zrKpwK4oe95pmrgYf1HSEKPA==
X-Received: by 2002:a05:622a:346:b0:31f:c40:eac0 with SMTP id
 r6-20020a05622a034600b0031f0c40eac0mr5373701qtw.326.1659700711064; 
 Fri, 05 Aug 2022 04:58:31 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 c8-20020ac85188000000b0031eb51dd72csm2491484qtn.85.2022.08.05.04.58.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Aug 2022 04:58:30 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8c5c:a823:f5bd:8751])
 by serve.minyard.net (Postfix) with ESMTPSA id 4CFC71800FA;
 Fri,  5 Aug 2022 11:58:29 +0000 (UTC)
Date: Fri, 5 Aug 2022 06:58:27 -0500
From: Corey Minyard <minyard@acm.org>
To: Tomer Maimon <tmaimon77@gmail.com>
Message-ID: <20220805115827.GG3834@minyard.net>
References: <20220804181800.235368-1-tmaimon77@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220804181800.235368-1-tmaimon77@gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
 > Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
 > string becuase NPCM845 and NPCM750 BMCs are using identical [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.177 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oJvyQ-004O4s-2g
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
Cc: devicetree@vger.kernel.org, benjaminfair@google.com, avifishman70@gmail.com,
 venture@google.com, openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, yuenn@google.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, openipmi-developer@lists.sourceforge.net,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Aug 04, 2022 at 09:18:00PM +0300, Tomer Maimon wrote:
> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> ---
>  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> index cbc10a68ddef..4fda76e63396 100644
> --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> +++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> @@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
>  Required properties:
>  - compatible : should be one of
>      "nuvoton,npcm750-kcs-bmc"
> -    "nuvoton,npcm845-kcs-bmc"
> +    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"

This is just wrong.  The compatible is supposed to identify the device,
not the board the device is on.  I think compatible here should be
"npcm7xx-kcs-bmc", and just use that everywhere.  It's fine if that is
used on a board named npcm845.

-corey

>  - interrupts : interrupt generated by the controller
>  - kcs_chan : The KCS channel number in the controller
>  
> -- 
> 2.33.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
