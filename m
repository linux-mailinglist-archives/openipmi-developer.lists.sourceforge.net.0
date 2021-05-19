Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D26213892A1
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 May 2021 17:29:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljO8f-0001gd-7m; Wed, 19 May 2021 15:29:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1ljO8d-0001g9-MW
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 15:29:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:References:In-Reply-To:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6sgw4dZNi4BFtEEc+m0JLU9MKkrHkvN3LLqqxVCcWAY=; b=aMWYciDhMFVC8THEbj1GoVaLbO
 7APMBCiIeFH72W/oRs2w1M9DE9hksAPU+FAFRLma2Nr6KRq3uA1PlKeGyZqmEdvbcPUK2Q5Ixmwbt
 vcrgt0gCbHLnnh/vtnEv3E1ryXFfE249HGmvRzFT3N6dE0JIEzwY+u3EBtfaCM/H1aQE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6sgw4dZNi4BFtEEc+m0JLU9MKkrHkvN3LLqqxVCcWAY=; b=U0GgPvDZSBD+ZsV8n3VCxZnUHk
 Okp1JPl5r83uTkUQAMANmN8TSEm64I/1lmbhYmizjbjTgJAqdD93ZWbLhn1b1Ba6wnQprJek3Com0
 2LRs6PVKbaxRNQ2q4LiimKpjHTSU/QlBE1SAEiaaUGCWi6iBD2sLo3SiL5Ik/cF0pfrs=;
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljO8Z-0004nA-0J
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 15:29:35 +0000
Received: by mail-oi1-f176.google.com with SMTP id s19so13452351oic.7
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 May 2021 08:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=6sgw4dZNi4BFtEEc+m0JLU9MKkrHkvN3LLqqxVCcWAY=;
 b=hwWFNLXiXZTr028w7+tr1BFjSh8ClLUvqsNcR7ioweDaO7vHTC2MTjMOQJ9Ac5SAQp
 6JM35nPfjBEp6/iBrwDUnYjLFJhqVL4r2aUVA74w7TKCplywQUvOhUD8IT2bqr+bMGNv
 1N2k7+PC938NPeve0LbkWO/6rVN6heRyzZ0KbEpY+lFzygVVRS5X1JrqwP9EJ5hQRGXY
 m9XMVzBYfwcX97OEm7FSbXhu9OoWaeWCozEG6IecHqY2kF4J3V/Ji3Tq3Zx6EA9OvyAv
 txMKOxolTDBCCjv6hbkAxS9DYpyIWdt8quntdUD00tMx6xUWHzO6dziu0EPRDdzT8yPU
 Maow==
X-Gm-Message-State: AOAM533bCvJ+/v5tzc+O1vQzvcg0w1fuBxTKSvCa5iZqgIQZx6lWVRe9
 O3PVbBjlDC8UyGEqWJ9VSg==
X-Google-Smtp-Source: ABdhPJxpcJcisKTasg8QiYFuZTHsZe6ssMjCsGuLZrRJywLDzjgJu1juj+3zcOycyjoKvnHHz5hSzA==
X-Received: by 2002:a54:481a:: with SMTP id j26mr7226575oij.154.1621438166265; 
 Wed, 19 May 2021 08:29:26 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b18sm1458otk.62.2021.05.19.08.29.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 08:29:25 -0700 (PDT)
Received: (nullmailer pid 3134231 invoked by uid 1000);
 Wed, 19 May 2021 15:29:24 -0000
From: Rob Herring <robh@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
In-Reply-To: <20210519074934.20712-8-quan@os.amperecomputing.com>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-8-quan@os.amperecomputing.com>
Date: Wed, 19 May 2021 10:29:24 -0500
Message-Id: <1621438164.118346.3134230.nullmailer@robh.at.kernel.org>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.176 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.176 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1ljO8Z-0004nA-0J
Subject: Re: [Openipmi-developer] [PATCH v3 7/7] bindings: ipmi: Add binding
 for Aspeed SSIF BMC driver
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
 Brendan Higgins <brendanhiggins@google.com>,
 Phong Vo <phong@os.amperecomputing.com>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, 19 May 2021 14:49:34 +0700, Quan Nguyen wrote:
> Add device tree binding document for the Aspeed SSIF BMC driver.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v3:
>   + Switched to use DT schema format [Rob]
> 
>  .../bindings/ipmi/aspeed-ssif-bmc.yaml        | 33 +++++++++++++++++++
>  1 file changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.example.dts:21.13-26: Warning (reg_format): /example-0/ssif-bmc@10:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.example.dt.yaml: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.example.dt.yaml: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.example.dt.yaml: example-0: ssif-bmc@10:reg:0: [16] is too short
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml

See https://patchwork.ozlabs.org/patch/1480727

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
