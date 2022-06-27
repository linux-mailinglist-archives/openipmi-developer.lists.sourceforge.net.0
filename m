Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 518F055BC3C
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Jun 2022 00:01:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o5wn7-0001Tb-0e; Mon, 27 Jun 2022 22:01:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <robherring2@gmail.com>) id 1o5wn5-0001TU-Fo
 for openipmi-developer@lists.sourceforge.net; Mon, 27 Jun 2022 22:01:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TZkUYB3BYeJsEsDSI6PmO4Ag8GHC0FQvV7iN+YB5Q0Q=; b=F8ZZ7oeuBrt78gCuGMhDzvVau+
 tuZD8jZUWsxeZPy/cKoFM2XvneySplQToLOR63CfgLn0xPjsDOew0zddiNRVX+FE9XT1HFCa/Up/Q
 jAp+eilV3MA5v2PtALgVFyRz0g6W25Is6YBWB9iaJVr4ndtblEDDBISsSjcLYki+KjR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TZkUYB3BYeJsEsDSI6PmO4Ag8GHC0FQvV7iN+YB5Q0Q=; b=GiTt+4VngY2AA4AFSsl8fjZnVJ
 +2QugBgKb9+YBn9xLYUJgCy38TyA2+HMw0kZSmHdDp3HffrUXaAJN3IBO8ATluCuUA3M6zFbPAaPM
 R1R8nmTsi5BxLAATfHWSo2pJGZpQIqNBw1FG07zl1PF9aOWekAkyUtMN2sdD/KWKB9ss=;
Received: from mail-il1-f173.google.com ([209.85.166.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o5wn4-0000pd-7L
 for openipmi-developer@lists.sourceforge.net; Mon, 27 Jun 2022 22:01:08 +0000
Received: by mail-il1-f173.google.com with SMTP id o4so6941619ilm.9
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 27 Jun 2022 15:01:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TZkUYB3BYeJsEsDSI6PmO4Ag8GHC0FQvV7iN+YB5Q0Q=;
 b=W+ALqGZoDtNz1I+tKgORTRJG1FMhZH161lFveye9dWqEgbvGHetyVw/6dLkqvvfNLP
 0YJdJP8joSQGTOOShnDetnGGiLfcDBJeAGuO2tXS6MSff7uOTd1tAG9+E+jdc1qs2CO1
 ooc+COXs3lOnP5EJPLtAZjMASHhDVQ7bbk5QuKLTJAJYCl/SghW11zNAYZg4yFBNjNNy
 Im0+5gfIviwE5ny16SCr2UcIg1uivZUP9hDfIOX57UhpN5wCn9WrffMpcJ6kAO3PpfxP
 HjQamTigZzmI9U8BAyb618BKETSOAMjRgyyVW+CJs7YyFdsKlHR9+niaMT1ANYRzc68E
 G3dQ==
X-Gm-Message-State: AJIora+pmZh4vC0e28dyJM+bdqeCN0AunhE4t3sB7BL7ZxdOLwbuzfU1
 eS285u+0VTxWxMF/nXzOsg==
X-Google-Smtp-Source: AGRyM1ssOJCADmXqWwlgb8kDzOGggbdItlatIWFU04SmaYPNYTJ0Nxv2RE7Xu59Xf0OzqmtEW0/lww==
X-Received: by 2002:a05:6e02:188a:b0:2d4:7fd:dbf with SMTP id
 o10-20020a056e02188a00b002d407fd0dbfmr8113049ilu.217.1656367260514; 
 Mon, 27 Jun 2022 15:01:00 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id
 bo22-20020a056638439600b0033c8edf022bsm2409410jab.144.2022.06.27.15.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jun 2022 15:01:00 -0700 (PDT)
Received: (nullmailer pid 3041223 invoked by uid 1000);
 Mon, 27 Jun 2022 22:00:58 -0000
Date: Mon, 27 Jun 2022 16:00:58 -0600
From: Rob Herring <robh@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20220627220058.GA3036977-robh@kernel.org>
References: <20220615090259.1121405-1-quan@os.amperecomputing.com>
 <20220615090259.1121405-3-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615090259.1121405-3-quan@os.amperecomputing.com>
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 15, 2022 at 04:02:58PM +0700, Quan Nguyen wrote:
 > Add device tree binding document for the SSIF BMC driver. > > Signed-off-by:
 Quan Nguyen <quan@os.amperecomputing.com> > --- > v8: > + No [...] 
 Content analysis details:   (0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.173 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1o5wn4-0000pd-7L
Subject: Re: [Openipmi-developer] [PATCH v8 2/3] bindings: ipmi: Add binding
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jun 15, 2022 at 04:02:58PM +0700, Quan Nguyen wrote:
> Add device tree binding document for the SSIF BMC driver.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v8:
>   + None
> 
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

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
