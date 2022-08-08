Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F8158C856
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 14:27:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oL1qe-0000lB-T1; Mon, 08 Aug 2022 12:27:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1oL1qd-0000l5-BY
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 12:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lsnBErhuU0r6TlMRuprIA+8yllP/XwwhzP1dc85oLRo=; b=arUDdxWmmQ/hedU3OhcWKAsfd9
 XFMfqXBiI6/mrhbhE6RzqYGwR7HHPaWQG1TPod1sgPaHvyZAfAR+TLwf0e24JKGg1MuLL49OIotu1
 u+1R/o8Jl3tgaM7bQKtbRExMmc4R/zrj+u7jP20uBA7aT6+Fnk4aXCeTmx1N1+yk7PA0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lsnBErhuU0r6TlMRuprIA+8yllP/XwwhzP1dc85oLRo=; b=M7KZVDByBGXZcsLWDpfSc/Ainy
 pYVy41N/8TInfxAymSm5nNF6PiRyjJ9e1Y5mEv0tx/fm1He8ankCc+2erejJ0gy2eS4YFesBA+Hvz
 2LI2jytSZHUNXQMhPKx3zrQZuVbVKZdeGRI8swsqgy4GGYqit668tBkAgQOsz7dDbF4o=;
Received: from mail-oa1-f48.google.com ([209.85.160.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oL1qX-00089L-V9
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 12:27:05 +0000
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-10ec41637b3so10328196fac.4
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 05:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc;
 bh=lsnBErhuU0r6TlMRuprIA+8yllP/XwwhzP1dc85oLRo=;
 b=X6XEAuWxtEVncbUVnM4LteJBd0Dc1i8ZXlHAd1Db9JERJMXK+jn6zh8haWzEIuTpvJ
 e/9/5EnD48wz+guGpkQRTgeoenkEyewYZArRr/c7jrvN1dcARmCLjrh4q/3i65j5ecMl
 4t8TF1kiziTLb8j/fmXYCP0A0hcZz8qBPzuMYdGGJbkOEXhCMXTmyH6nxZMv9x8qFdMX
 9pKfdk1mcDa4qdfycOqjp/NJrRbF5ydbVaDE/8lS6PRBApv3xypLwonIMevUMHieOeWF
 VVO7h5QdmzvdUbKZ4sSxTO5wr3dsgYJA5TDsNHXuRO3PkcuFs/xSFxLw93tZLRvY0W2e
 M9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc;
 bh=lsnBErhuU0r6TlMRuprIA+8yllP/XwwhzP1dc85oLRo=;
 b=BlnmD132dUeTVmKgXUYu670u0jC4oI5QBRAniO9q7Ns+ggUQkKOGmm5enlzMbgvXUH
 isqm6vdSPJEXI/uRPG/MKzOdrcOB5dekaSuQpeKv8hoO5r92KruJIGaKeWSIlNEEMmA1
 NRoWfNEmhWDKNhGWey6SgWWEo6LpiFOUGWakcNqvwfHT6/vmxjXGPDLrV0Vn7nJ0hdVv
 6jrt07Za54jYu9717KRvPT9leu2uhYdXuYWVIfEIrtEKVPFf2zoO/TI26maE0RXk0EPs
 Zy9Tu5opCOa5Hwunxg6q8Qa9mhqvV3nZy7wuGJRnhWSdGjt3uikjTidpf/lSeLOqV27w
 OFfQ==
X-Gm-Message-State: ACgBeo2KW1dAgM8ztbQ4wXf1OxDYMzfvjdKyDIOzZMprDl5wg1EI5Y+P
 8K5T3yBdS/xA8AukhG9i+uYoAo6wJ9DT
X-Google-Smtp-Source: AA6agR50jq+nfiCg6C40xQ7OLmWG0uCJ0WEwg5bSHfc4fFU87YwMbz6vkTdnumtoDH5wUQXXhydsnA==
X-Received: by 2002:a05:6870:c596:b0:101:6409:ae62 with SMTP id
 ba22-20020a056870c59600b001016409ae62mr11777265oab.112.1659961615326; 
 Mon, 08 Aug 2022 05:26:55 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 p84-20020acaf157000000b00342df642fd3sm916967oih.48.2022.08.08.05.26.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Aug 2022 05:26:54 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:3153:e085:df0f:abc2])
 by serve.minyard.net (Postfix) with ESMTPSA id A861A1800FA;
 Mon,  8 Aug 2022 12:26:53 +0000 (UTC)
Date: Mon, 8 Aug 2022 07:26:52 -0500
From: Corey Minyard <minyard@acm.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Message-ID: <20220808122652.GO3834@minyard.net>
References: <20220808075452.115907-1-tmaimon77@gmail.com>
 <da83671e-08b9-2d68-e5d3-d9b09c105bb4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da83671e-08b9-2d68-e5d3-d9b09c105bb4@linaro.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 08, 2022 at 11:11:16AM +0300, Krzysztof Kozlowski
 wrote: > On 08/08/2022 09:54, Tomer Maimon wrote: > > Add to npcm845 KCS
 compatible string a fallback to npcm750 KCS compatible > > string [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.48 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oL1qX-00089L-V9
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

On Mon, Aug 08, 2022 at 11:11:16AM +0300, Krzysztof Kozlowski wrote:
> On 08/08/2022 09:54, Tomer Maimon wrote:
> > Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
> > string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
> > 
> > Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
> > Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Ok, I think I understand how this is supposed to work.  It's not
altogether clear from the device tree documentation.  It says in
Documentation/devicetree/bindings/writing-bindings.rst:

- DO make 'compatible' properties specific. DON'T use wildcards in compatible
  strings. DO use fallback compatibles when devices are the same as or a subset
  of prior implementations. DO add new compatibles in case there are new
  features or bugs.

AFAICT, there are no new features or bugs, just a new SOC with the same
device.  In general usage I have seen, you would just use the same
compatible.  However, if I understand this, that last sentence should say:

  DO add new compatibles in case there is a new version of hardware with
  the possibility of new features and/or bugs.

Also, the term "specific" is, ironically, vague.  Specific to what?

It would be nice to have something added to "Typical cases and caveats"
that says:

- If you are writing a binding for a new device that is the same as, or
  a superset of another existing device, add a new specific compatible
  for the new device followed by a compatible for the existing device.
  That way, if the device has new bugs or new specific features are
  added, you can add workarounds without modifying the device tree.

Anyway, I have added this to my tree with your ack.

-corey

> 
> 
> Best regards,
> Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
