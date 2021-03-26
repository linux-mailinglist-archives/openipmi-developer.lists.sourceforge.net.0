Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE34349F03
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Mar 2021 02:49:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lPbar-00069O-V4; Fri, 26 Mar 2021 01:48:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <robherring2@gmail.com>) id 1lPbar-00069I-Gj
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Mar 2021 01:48:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X6YTJv8PO1HpNTdDvMgdjs2viXmFhvJEOHLtU1v5wAY=; b=OVFiLzkGwfAuYGZ7DkPcZbr04b
 DT6JaONdMmy9Y4PfKFOI6W1vwRtdtUfrcof2wYGc7mARHj5WCcA4/ltlBRcsDyLDX+53cnM4V0ca2
 J7aNQgx3b76l9CMnfL61Ncf3dx9CoUjTHk8Aj0VSbKVpYfYfc66cwOrzjTtRZXuUiPWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X6YTJv8PO1HpNTdDvMgdjs2viXmFhvJEOHLtU1v5wAY=; b=WyUqjydzJOp+ib7+glm0hG9JDH
 3YsJanCvfAXAwAQncdEppG7fUfkkbBVyjqQ+Rc6eCacdJSDZ0hjYK8Vyac8V5ml0269jnpdMO5kcF
 1rQ4ajEc3yOrYrmdzLJUuExQcDXq0ANKT16phofPsCsdjvfHfDUEXJVu7Xk05QhR76aA=;
Received: from mail-io1-f47.google.com ([209.85.166.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lPbal-00C1E9-0U
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Mar 2021 01:48:57 +0000
Received: by mail-io1-f47.google.com with SMTP id f19so3902525ion.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 Mar 2021 18:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=X6YTJv8PO1HpNTdDvMgdjs2viXmFhvJEOHLtU1v5wAY=;
 b=SKPCvbohj/XwuM3WQcLNKowtR6OOOzvDSj+n8uzXbZo1ofiXtQLw0E7dz5sdS8MHL1
 PdGArTuEkBbrgfejrM9MEBJE/Lfth+uPib5hHE2LmbhEVidukvaUFxzDKCJnNtAKOrVK
 ncqU9ZULbqEQUa2MRpnjXK2Ac5AEUxirneixGx2UhEcuq+dLMYDQPdqizJM1BQxGXhnc
 XMRJuOaE5aLecvoERwfVbSYqustH/NiqHvTMUW5uBsOTX686nmT02IMDxK+HPdLTW44r
 v5avFn8OBcNY5Hpdn+fZRCD2yA3J/gYohjRfog2gnY6V/DlqPRuewFTSICbCWtRuPJ1Y
 8bEg==
X-Gm-Message-State: AOAM531HxJjjiNefs87iCOb7ZiwEmWiSptUxzwPRYWG+hsGVOn8oWU2R
 A8RM6XYnque/UfbzvYRSGA==
X-Google-Smtp-Source: ABdhPJyDmoRag/D/LcKrCkrgOgZ/N8vDgz2C2nifLnc+tV7blqHuXcykgqFsEtGx5Ud/vQlEzwZksA==
X-Received: by 2002:a6b:6418:: with SMTP id t24mr8313385iog.159.1616723325341; 
 Thu, 25 Mar 2021 18:48:45 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id k17sm3561002ilr.57.2021.03.25.18.48.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 18:48:44 -0700 (PDT)
Received: (nullmailer pid 2158331 invoked by uid 1000);
 Fri, 26 Mar 2021 01:48:42 -0000
Date: Thu, 25 Mar 2021 19:48:42 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210326014842.GA2158272@robh.at.kernel.org>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-17-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319062752.145730-17-andrew@aj.id.au>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lPbal-00C1E9-0U
Subject: Re: [Openipmi-developer] [PATCH v2 17/21] dt-bindings: ipmi:
 Convert ASPEED KCS binding to schema
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
Cc: minyard@acm.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 ryan_chen@aspeedtech.com, tmaimon77@gmail.com, linux-aspeed@lists.ozlabs.org,
 avifishman70@gmail.com, venture@google.com, chiawei_wang@aspeedtech.com,
 linux-kernel@vger.kernel.org, tali.perry1@gmail.com,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, lee.jones@linaro.org,
 openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 19 Mar 2021 16:57:48 +1030, Andrew Jeffery wrote:
> Given the deprecated binding, improve the ability to detect issues in
> the platform devicetrees. Further, a subsequent patch will introduce a
> new interrupts property for specifying SerIRQ behaviour, so convert
> before we do any further additions.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml | 92 +++++++++++++++++++
>  .../bindings/ipmi/aspeed-kcs-bmc.txt          | 33 -------
>  2 files changed, 92 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
