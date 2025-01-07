Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8F7A04D3E
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 00:13:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVIlI-0002eD-QM;
	Tue, 07 Jan 2025 23:13:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tVIlH-0002e5-C1
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 23:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cXWjOzH5UzEYw27TDmJ11UEwxNrIrh3j6oaKp86+zmA=; b=Z8fEU/sjbwVSYz/zGRxH1SOXQC
 YwpaGSnuOsVVpULzz5HHxgGyzEJU6OSNh0UUV/+X50mYYlbFIof44UbMk/fJfMov030YKyZB7WfGl
 x3KO31MBkH4U/w+TkbX/zVm3eUcD4MkJJxP5UX0cZuz1fFMp8Bh053h8/klNa10C3Ypw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cXWjOzH5UzEYw27TDmJ11UEwxNrIrh3j6oaKp86+zmA=; b=Cplq0d0RM/hK+yhsVJkr62R0DQ
 qHecnfJmZJheegPhZXSb7D92m1ZmkIIttezvwlWsZzavTVsQc8RNoerSDgsY4p/BjmxcwuQ7aKIJR
 zKFw56BXmZqEWZZhdJ2XZ5tcmQA6QsNXKXywKOpNFzRfCQRxgxkQgs1Cq+3cUA2FmbYc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVIlH-0005Bg-EA for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 23:13:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id ED71A5C0F91;
 Tue,  7 Jan 2025 23:12:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91A1DC4CED6;
 Tue,  7 Jan 2025 23:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736291592;
 bh=Do/168fsFw6i80h2fR3YzMw5FE9OseaEDLt7XS3HU7g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BpvIv3gvmHkpEVhnNyN37lX3TxNiebJs1tHfvBdm0G1eeX0t4GC7nnRsRoB+jCF6U
 8YjvgIye0yGn1ndJ+hDTT+RnJJZeNboOru3+3jHg7A+ierFyLCkCzgdRfjyqnuLdkX
 drGMJ0FHxB/3GWIWzQ4Moj3LGfdg1JXVilAeJHIGjnEEhWDRP60H43Wt2wWWIrQLSs
 BRuiPpRBy94Hn0tW6weXnf54+bcu5BfzwXLgzLaj49cvvyGvqAth642gSMS+JejS+j
 hj4OdFu47n9KCunxQjIogQnds/pm1TmtgIL/6imDVnrlJ6cDzanK7j8Han8EJAU2NC
 RIpHEzG19CDZw==
Date: Tue, 7 Jan 2025 17:13:11 -0600
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <20250107231311.GA1965288-robh@kernel.org>
References: <20250107162350.1281165-1-ninad@linux.ibm.com>
 <20250107162350.1281165-3-ninad@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250107162350.1281165-3-ninad@linux.ibm.com>
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 07, 2025 at 10:23:39AM -0600,
 Ninad Palsule wrote:
 > Add device tree binding document for the IPMB device interface driver.
 Please mention this is already is already in use both in a driver and .dts
 files. Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tVIlH-0005Bg-EA
Subject: Re: [Openipmi-developer] [PATCH v2 02/10] bindings: ipmi: Add
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

On Tue, Jan 07, 2025 at 10:23:39AM -0600, Ninad Palsule wrote:
> Add device tree binding document for the IPMB device interface driver.

Please mention this is already is already in use both in a driver and 
.dts files.

> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> new file mode 100644
> index 000000000000..9136ac8004dc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/ipmb-dev.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: IPMB Device Driver

Bindings are for devices, not drivers. Drop 'Driver'. It's a stretch 
that IPMB is even a device, but since there are already a few users, I 
guess we're stuck with it.

> +
> +description: IPMB Device Driver bindings

No point in a description that just repeats the title. Please expand 
this. For example, AIUI, this is for the device end, not the BMC end.

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

As this is the slave end, I2C_OWN_SLAVE_ADDRESS should be set. So:

minimum: 0x40000000
maximum: 0x4000007f

Maybe 10-bit addressing has to be supported too?

> +
> +  i2c-protocol:
> +    description:
> +      This property specifies that the I2C block transfer should be performed
> +      instead of SMBUS block transfer.

This can be more concisely said:

Use I2C block transfer instead of SMBUS block transfer.

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
> +        i2c@10 {

'i2c' node name is for i2c buses and this is not one. 'ipmb' is probably 
fine here.

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
