Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 789CA72AB8C
	for <lists+openipmi-developer@lfdr.de>; Sat, 10 Jun 2023 14:52:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1q7y59-0007VM-4L;
	Sat, 10 Jun 2023 12:52:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1q7y55-0007VG-W8
 for openipmi-developer@lists.sourceforge.net;
 Sat, 10 Jun 2023 12:52:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ypunSIKUqzh75YIeQaRkHjhmNZ/hwFhCbdx6FqXAu9o=; b=ii9fUL8rl8Rm474ati0vp+w5Ok
 FuQJY3QyZlNYqb9T/MiCdvMCWHzE6DkTVXaTlEHnPhV3QaWWMygEMLFLORsTUffbSLT6LlpEjAJit
 cW+uZPo/1dRVqS9lZw6UhCSw9gfvBVyTLu+LPqmsBfrVw9b1MutapHq7TTub/CzrIZUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ypunSIKUqzh75YIeQaRkHjhmNZ/hwFhCbdx6FqXAu9o=; b=FL8RBHFlIyfhEzyY7dF1+bP/C3
 SftOP9aIIjrdmkRYKCfpymmMS4LOHBjfCSQOjWX0p1esuWDJ2zk10ZXw1ZTRVQkNBIBz9m+MtDgKz
 dgQlijo/nji7enTX/WW1b0DgsVnm1usEp61M9eFCFvuyyky5jZhsixRzjbsnRJxdjABM=;
Received: from mail-oo1-f45.google.com ([209.85.161.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q7y52-00020K-2O for openipmi-developer@lists.sourceforge.net;
 Sat, 10 Jun 2023 12:52:35 +0000
Received: by mail-oo1-f45.google.com with SMTP id
 006d021491bc7-55afa2472d9so1778497eaf.0
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 10 Jun 2023 05:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1686401546; x=1688993546;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ypunSIKUqzh75YIeQaRkHjhmNZ/hwFhCbdx6FqXAu9o=;
 b=g45/G3xC9sH2xNWZ6p7/51PCGM+7NosvtHN4VJoiDJxnTel/9M5KBWRJXTrbVFGxk8
 u5MXFHO/yBVREKnKTeZSFVBJnairzfK8l1912tF7jCrey4fPFI64Pjn5A4IXCo51t7un
 rlMZ3BK6wD3AMoJWg0v7rJaPx2kNXTrUOrvjya6R6McblHu89Sl/Hj1xbcOe6qhCHage
 2c72hl7T8Zq8yX5rzilD+b0AupIowbIqRpCuUTckO2QE+qpWcYWRo4zpPxtk52Cc/TXM
 Wdvjj+/rVzXDwDEXINf80szdTpuCkkzXTjacnVTfc3RUieDfTEpJ+RG928/jsC3D3q25
 2rAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686401546; x=1688993546;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ypunSIKUqzh75YIeQaRkHjhmNZ/hwFhCbdx6FqXAu9o=;
 b=diSBzYSQO1DLZITpyxrm/a67lc5GrP5Trh/FsV+ja5KT8VZrXFwdJ9n82ZbzFC/4vI
 jcInl2OQdN+0OLmqVwYaXU0NRmyffIg/Y8TPExI4P3REeW8WTVLin8nNsAnd4c9Pc5Px
 /406MPivCk817OR9FkSSu4IFPCO3c3t4y3ER3YBUzhTzr6MhrV/c/Zw4hZDO+12+2ZGx
 6qeYuxcGEiDN8CXsSYy+gPtYw3/hdEp0bcMqX7IAN3d+AaVcBYwIS64U+gpJvqkwck5K
 9fo3M6Q3VqNnuJYfOrXAwjnmffNuwB2HG4vyUc7SG6fXNisdBouqCoxwbiTFxRkjhEOW
 B5IA==
X-Gm-Message-State: AC+VfDxbYJ5KSHsO+pYEQC+ynPkCPkNABd2AKE1aVL3nO1gG3kCr73lX
 UxftkCUH+0NBw99zgcIhIQ==
X-Google-Smtp-Source: ACHHUZ5tZl6zQi3tZ3ZIyb80b0WEZFIQ3IM8ZhCNGZxrKoZC2y3OSR1/MtXGpq4cjDjk0GM+k+2xPQ==
X-Received: by 2002:a4a:e7c1:0:b0:546:dd51:f74f with SMTP id
 y1-20020a4ae7c1000000b00546dd51f74fmr2296073oov.4.1686401546227; 
 Sat, 10 Jun 2023 05:52:26 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 v4-20020a4aa504000000b00552acb7c89dsm1652130ook.21.2023.06.10.05.52.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 05:52:25 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8f19:4a52:beef:59ed])
 by serve.minyard.net (Postfix) with ESMTPSA id 76BDB1800BA;
 Sat, 10 Jun 2023 12:52:24 +0000 (UTC)
Date: Sat, 10 Jun 2023 07:52:23 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <ZIRyB531ttuE1SUI@mail.minyard.net>
References: <20230609140729.64799-1-krzysztof.kozlowski@linaro.org>
 <778e2930-1678-45bb-a01e-21bf321fb6d8@betaapp.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <778e2930-1678-45bb-a01e-21bf321fb6d8@betaapp.fastmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 10, 2023 at 08:49:27AM +0930,
 Andrew Jeffery wrote:
 > > > On Fri, 9 Jun 2023, at 23:37, Krzysztof Kozlowski wrote: > > Cleanup
 bindings dropping unneeded quotes. Once all these are fixed, [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.45 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.45 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1q7y52-00020K-2O
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: ipmi: aspeed,
 ast2400-kcs-bmc: drop unneeded quotes
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Jun 10, 2023 at 08:49:27AM +0930, Andrew Jeffery wrote:
> 
> 
> On Fri, 9 Jun 2023, at 23:37, Krzysztof Kozlowski wrote:
> > Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> > checking for this can be enabled in yamllint.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Acked-by: Andrew Jeffery <andrew@aj.id.au>

This is in my next tree.  Thank you.

-corey

> 
> > ---
> >  .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml  | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git 
> > a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml 
> > b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> > index 4ff6fabfcb30..129e32c4c774 100644
> > --- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> > +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> > @@ -41,7 +41,7 @@ properties:
> >        - description: STR register
> > 
> >    aspeed,lpc-io-reg:
> > -    $ref: '/schemas/types.yaml#/definitions/uint32-array'
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> >      minItems: 1
> >      maxItems: 2
> >      description: |
> > @@ -50,7 +50,7 @@ properties:
> >        status address may be optionally provided.
> > 
> >    aspeed,lpc-interrupts:
> > -    $ref: "/schemas/types.yaml#/definitions/uint32-array"
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> >      minItems: 2
> >      maxItems: 2
> >      description: |
> > @@ -63,12 +63,12 @@ properties:
> > 
> >    kcs_chan:
> >      deprecated: true
> > -    $ref: '/schemas/types.yaml#/definitions/uint32'
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> >      description: The LPC channel number in the controller
> > 
> >    kcs_addr:
> >      deprecated: true
> > -    $ref: '/schemas/types.yaml#/definitions/uint32'
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> >      description: The host CPU IO map address
> > 
> >  required:
> > -- 
> > 2.34.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
