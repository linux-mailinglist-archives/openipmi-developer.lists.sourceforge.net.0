Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 991FCA096BF
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Jan 2025 17:07:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tWHXk-0000I3-Na;
	Fri, 10 Jan 2025 16:07:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tWHXj-0000Hw-9z
 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 16:07:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ix31C5pSpXY8k6w9TewnzNJ/TNiypBsPfJmPK8zNyhw=; b=CHP8vA+pmVopEBN0cpGkgnYX65
 NCsRQ64DM5l69lEBcnTKylxPB788tXnBZQUpR2l3vcKYA6kx1FyseYw6qfE13xDqsHGm2q/h6GcMV
 kdrfs1xWTdfP7Xi2YPmIeh226xgh2kiUbrdYyHi9Gut0boWGSniua/7uznECyT6o/1bo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ix31C5pSpXY8k6w9TewnzNJ/TNiypBsPfJmPK8zNyhw=; b=dfEWWw3eTHVB3C40s8yXo9dlQR
 ae0X72MP6rN24GbI4hnsYbx0VJnwqDR701sR517UZQAym0nEH+x6tjA4I0f8Ll+RaACz5f1P27KG2
 5afRqhRDrmRrfjn7PNJMUsgdy42KKrvoswlysMILUVfMy0N9b+pirfsTAwTh4w+dSk5s=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tWHXh-0003xD-Vs for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 16:07:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C756CA425D5;
 Fri, 10 Jan 2025 16:05:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA7E1C4CED6;
 Fri, 10 Jan 2025 16:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736525234;
 bh=8ic0fmAFCingqmiYWExc1+9H7U4At02apc1uatdqHJI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I+9hpbaIVj0FizWLBTAWdFSqcU/ByW3qkTkX6aDezSm2lBVzZd/sn0qs/9PXrA8Q4
 idGoskoWOfDiMrR28hTdGd4EP4GR7tky/OOW0c2RmkLyfK0p4nEdSPYzJw5pUm7Jgs
 6+BxOrKW86Yu76GQ+CkNNz9YIaoq7HDmT+0mT/1jrhlUPtZuImUsGli2KVgZDX6GrI
 waLjYb0D5kB4O9yeG7i5fZOaHxy5BakYKOaVVr/ibq+qLFIMYwfLPVXfZ9OLLvWq0J
 TjlUtV5r97UcbuTVykcU/CeIZKNX9FaGjzHpFrcxhWuLoBzIvHEoYuB7nKsmUZ+wr1
 H3pRIN9+Xdmzw==
Date: Fri, 10 Jan 2025 10:07:13 -0600
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <20250110160713.GA2952341-robh@kernel.org>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <20250108163640.1374680-3-ninad@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250108163640.1374680-3-ninad@linux.ibm.com>
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 08, 2025 at 10:36:30AM -0600,
 Ninad Palsule wrote:
 > Add device tree binding document for the IPMB device interface. > This
 device is already in use in both driver and .dts files. > > Sign [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tWHXh-0003xD-Vs
Subject: Re: [Openipmi-developer] [PATCH v3 02/10] bindings: ipmi: Add
 binding for IPMB device intf
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
From: Rob Herring via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, ratbert@faraday-tech.com,
 minyard@acm.org, netdev@vger.kernel.org, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch, edumazet@google.com,
 linux-aspeed@lists.ozlabs.org, kuba@kernel.org, krzk+dt@kernel.org,
 pabeni@redhat.com, openipmi-developer@lists.sourceforge.net,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jan 08, 2025 at 10:36:30AM -0600, Ninad Palsule wrote:
> Add device tree binding document for the IPMB device interface.
> This device is already in use in both driver and .dts files.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> new file mode 100644
> index 000000000000..a8f46f1b883e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/ipmb-dev.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: IPMB Device
> +
> +description: IPMB Device interface to receive request and send response

IPMB is not defined anywhere.

Which side of the interface does this apply to? How do I know if I have 
an ipmb-dev?

This document needs to stand on its own. Bindings exist in a standalone 
tree without kernel drivers or docs.

> +
> +maintainers:
> +  - Ninad Palsule <ninad@linux.ibm.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ipmb-dev
> +
> +  reg:
> +    maxItems: 1
> +
> +  i2c-protocol:
> +    description:
> +      Use I2C block transfer instead of SMBUS block transfer.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ipmb-dev@10 {
> +            compatible = "ipmb-dev";
> +            reg = <0x10>;
> +            i2c-protocol;
> +        };
> +    };
> -- 
> 2.43.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
