Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1695150EB51
	for <lists+openipmi-developer@lfdr.de>; Mon, 25 Apr 2022 23:39:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nj6Qd-0000Ep-0R; Mon, 25 Apr 2022 21:39:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <robherring2@gmail.com>) id 1nj6Qc-0000Ej-EN
 for openipmi-developer@lists.sourceforge.net; Mon, 25 Apr 2022 21:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M3R043itbLpaOlNutqBsUrB9rfl8TA7O8rvFQFaCgW0=; b=JcYUnc/ahCYn95yr+2zIWoTYcD
 YzkZiMUWlBctBVDPN/N+Ot3DzC2sWLI/6TMVpXYiqZoDYOBV0anRPn+FCL+aSkQLIcZN62aoaO/ew
 e44W5aO63ygHfJgEu2uS9oM+pG/szzghPcZonAQtUJod8pFFhBc3VavJzPwr/Ck4+Ogo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M3R043itbLpaOlNutqBsUrB9rfl8TA7O8rvFQFaCgW0=; b=eYXozl65JzEgK76hlHnuwE4iCq
 vdmr0ETsPxcW4FEazxgvG1WRSVp0TpyKxrFcKqwWBN/7eqw9nQ8MxmOa6EDrBRcwISDPzc2f3WK58
 INra+uqdAGqLUHxwJxydbQD9szT1mFrt8mHE6ZAMSKoqxWdel1fn3hT45GbEj1zdKwUE=;
Received: from mail-oa1-f48.google.com ([209.85.160.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nj6QZ-00A4Il-2P
 for openipmi-developer@lists.sourceforge.net; Mon, 25 Apr 2022 21:39:31 +0000
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-d39f741ba0so17475976fac.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 25 Apr 2022 14:39:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=M3R043itbLpaOlNutqBsUrB9rfl8TA7O8rvFQFaCgW0=;
 b=GSRz3pNcWFRbL9v3DsF1Aito8naJ5lKEH8auv/I2MKd46hImcFxLV148lyhlnnKMp8
 MopwlpAIjtxDGaS+5vX3he6ERFL6MdZqS2tyk+1pnH4GMbuDHMXaVaCo3xGAnrAz94z4
 4Rx8sTP0+uxZnJckX+UfZqAaZ4EBDH4c0hleBVcGohi/6ceNlo9gCdieRhtEr1jqnNn3
 ryiJAGqi+mx+F6WEloBCsSziAtsx5uC1YJe473IC9kQ3LSHSwJayA9OKcW5Jz5maAmp7
 yTeP1djGfSPwzJwtz6WLoHOEo0SIZwfQE9D1NVAcHW74Y13ZaKn3VMOf11jtMwffgxXs
 Xd8A==
X-Gm-Message-State: AOAM533+npES8NmTI8Ez1D0/rT36k0kXqIV51d5XPJJfv5wnp4BJb9Q5
 VN3LT+giHKSv/j+jYx2hig==
X-Google-Smtp-Source: ABdhPJx95JVH34JzFNbcrxkClorcgvSIy6VQetgVvlAGfeInSVtMGuS9SDe47ls3sAPTDW45mGk2tA==
X-Received: by 2002:a05:6870:618e:b0:e5:c2f3:e009 with SMTP id
 a14-20020a056870618e00b000e5c2f3e009mr8008861oah.10.1650922761186; 
 Mon, 25 Apr 2022 14:39:21 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 r8-20020a05683001c800b006059d4bc39dsm2893087ota.6.2022.04.25.14.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 14:39:20 -0700 (PDT)
Received: (nullmailer pid 334467 invoked by uid 1000);
 Mon, 25 Apr 2022 21:39:19 -0000
Date: Mon, 25 Apr 2022 16:39:19 -0500
From: Rob Herring <robh@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <YmcVB/9lB6xkw4d2@robh.at.kernel.org>
References: <20220422040803.2524940-1-quan@os.amperecomputing.com>
 <20220422040803.2524940-3-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422040803.2524940-3-quan@os.amperecomputing.com>
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 22 Apr 2022 11:08:02 +0700, Quan Nguyen wrote: > Add
 device tree binding document for the SSIF BMC driver. > > Signed-off-by:
 Quan Nguyen <quan@os.amperecomputing.com> > --- > v7: > + Change c [...] 
 Content analysis details:   (0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.48 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nj6QZ-00A4Il-2P
Subject: Re: [Openipmi-developer] [PATCH v7 2/3] bindings: ipmi: Add binding
 for SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 linux-aspeed@lists.ozlabs.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Open Source Submission <patches@amperecomputing.com>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 22 Apr 2022 11:08:02 +0700, Quan Nguyen wrote:
> Add device tree binding document for the SSIF BMC driver.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v7:
>   + Change compatible string from "ampere,ssif-bmc" to "ssif-bmc"  [Jae]
> 
> v6:
>   + None
> 
> v5:
>   + None
> 
> v4:
>   + Fix warning with dt_binding_check [Rob]
>   + Change aspeed-ssif-bmc.yaml to ssif-bmc.yaml [Quan]
> 
> v3:
>   + Switched to use DT schema format [Rob]
> 
> v2:
>   + None
> 
>  .../devicetree/bindings/ipmi/ssif-bmc.yaml    | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
