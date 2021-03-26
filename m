Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB84349F0C
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Mar 2021 02:50:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lPbc2-0007j6-9b; Fri, 26 Mar 2021 01:50:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1lPbc1-0007it-59
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Mar 2021 01:50:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N9Te2GQTu4UomMNR5C1yrVqQ8Ms/2vbp9BYJ7j0G8SY=; b=CP6z+hs/2c2jYzFnsEAPWCjDNX
 lxFXXo49w2ZQVvl/lYqsYvkxxVWe9+TcQkaLKkeQVSgrXbDo+sOHIqXpnbpChQTLXWKc+S5BacB/L
 25GoRGLoFKxWk5KLdzHBVoW81h6zA9rrEtcAxxI/2ex0YksP1D18WUQxS5EL/MPS9B3w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N9Te2GQTu4UomMNR5C1yrVqQ8Ms/2vbp9BYJ7j0G8SY=; b=O7zz/De0ABXpGy1SgRbgv9nEMj
 PPIFoOUlN4vPODBLcaB1NoYSJggS7hfSMU24JIeSepId92fMppngxl03V3h4CklibbyRkdcVGnuvw
 KymJhzCGJxGK/tMEDTy4a1VPGWW451vHu4bXgBOm0R3ZqFDGN61QlZTjAYIX0Q5iEuWU=;
Received: from mail-io1-f49.google.com ([209.85.166.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lPbbt-00C1Ho-Nj
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Mar 2021 01:50:08 +0000
Received: by mail-io1-f49.google.com with SMTP id n21so3888345ioa.7
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 Mar 2021 18:50:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=N9Te2GQTu4UomMNR5C1yrVqQ8Ms/2vbp9BYJ7j0G8SY=;
 b=NJZI9S3213PmSZuThKC1lMnzybfodOqqrIHw437KQjA16dstfnmp9kjIkXHyhWDgqY
 CiBaDX1h10cRhAaT+ie2BfsgRcHEPg1HbLhrNMdN0kjD2SXoxG8jWO0cIY7kiD6fjSbK
 N1J0LF+6zAIVL5LtOOdd7nx2+A8mw05zdiId8ssN/snAwi4E3gudVEFsn9VG3YiYQ0pJ
 cBI7llsjQtFM9lvRMMMjnxgEO51EMqVhNSeodDoXepu+WELRteSZdzZfTVbylUpF6Z0u
 O35/4rHXCjj7X/RUfPVbgX1Ty83L6x07abgGUg5I2MwI3Oh0cmVGxIM9aq9iYZ2JQTZ3
 SSjg==
X-Gm-Message-State: AOAM531L20x4AyzyOOSEXrmvADPe8PXlUCsx5DRbRog+2IpqnKFzxHAN
 goqhcUsGyxi2Le79E3fglA==
X-Google-Smtp-Source: ABdhPJzoTwDGhGHQRCjyGQmKg+KE2sK/7QlyDCM2mrD6AWIkiUxBHRzesApHsW7lgBo9JGVADjnmEg==
X-Received: by 2002:a6b:ea04:: with SMTP id m4mr8486022ioc.160.1616723396206; 
 Thu, 25 Mar 2021 18:49:56 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id g8sm3140676ile.44.2021.03.25.18.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 18:49:55 -0700 (PDT)
Received: (nullmailer pid 2160116 invoked by uid 1000);
 Fri, 26 Mar 2021 01:49:47 -0000
Date: Thu, 25 Mar 2021 19:49:47 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210326014947.GA2160061@robh.at.kernel.org>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-18-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319062752.145730-18-andrew@aj.id.au>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.49 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lPbbt-00C1Ho-Nj
Subject: Re: [Openipmi-developer] [PATCH v2 18/21] dt-bindings: ipmi: Add
 optional SerIRQ property to ASPEED KCS devices
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
Cc: minyard@acm.org, devicetree@vger.kernel.org, chiawei_wang@aspeedtech.com,
 ryan_chen@aspeedtech.com, benjaminfair@google.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org, tali.perry1@gmail.com,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, lee.jones@linaro.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 tmaimon77@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 19 Mar 2021 16:57:49 +1030, Andrew Jeffery wrote:
> Allocating IO and IRQ resources to LPC devices is in-theory an operation
> for the host, however ASPEED don't appear to expose this capability
> outside the BMC (e.g. SuperIO). Instead, we are left with BMC-internal
> registers for managing these resources, so introduce a devicetree
> property for KCS devices to describe SerIRQ properties.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml      | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
