Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32961A04925
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Jan 2025 19:22:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVEE9-0006uv-T3;
	Tue, 07 Jan 2025 18:22:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tVEE8-0006uo-5D
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 18:22:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:Message-Id:References:In-Reply-To:To:Cc:
 From:MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/gkFFLzzDG1L/33tUrIZ7IbRLBj2EoYvSSWS8ENRDhM=; b=NHEMYOkmGpCVUllBICKQbK1s+i
 4NgVb55qOlbiWVWE4bB3awWZke2d7ejAYPF9xrDPPrToRuYmTyuFmPtTavVdbXDFStfuQlyNpXCxw
 WDCTmMsiGxu86uqvM4gAhTTOIB9t6SjoigafcsxhMFel1DUAxfnNCa26SPvigqTeREak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:Message-Id:References:In-Reply-To:To:Cc:From:MIME-Version:
 Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/gkFFLzzDG1L/33tUrIZ7IbRLBj2EoYvSSWS8ENRDhM=; b=hYfdS19uYy/21QC4H2qIkbHOav
 U+JPcTTJPM3rOGZxQXcHfMUmAiNoFpjhsSB5Tciivmljq0Zyx2G0/ndY9E7KyRfD1pevrwFQYxQqs
 ewmficC+LeMr6xr+Aouuss0d5MVPqTfjEwiZnN5aJzJ13sAjapA1Z9SFSk+DQ2hfoxr4=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVEE4-00085n-0Q for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 18:22:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 85225A41B86;
 Tue,  7 Jan 2025 18:20:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7A9DC4CED6;
 Tue,  7 Jan 2025 18:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736274156;
 bh=nQt0n0t3yZF3lcbbDEr06Sl/D9a0HeRqKxRgtUlA08I=;
 h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
 b=Y8Uox00V0JqdR041OQIfsDcEnXxckrrsxU+9GwVzlDW75rqIbyuwc/gSpA/1JFEws
 3ILKwoSAbMHiK6q+Iy3iIFE2ZQjba3dsgC4QqqMM75IE6xzfd4M60L6bnC9h1XIFg1
 813GljNv7DbP7qomTalL0jq0xCVsBLhgbGSYgF/KDvjt0AHRm8tCZ6XbXBp4b9pbvd
 0S3rmZzcpycYu2LROF9Acl6tOjSoiztCEzw3vhQ5m4VNcIiys9FUBjEUb9q5YIH1Zt
 33dBBdWB559MFABnYDCYlXp9p6tO0t2X3CPRa02N8NhghE31+7ZQlMaOfWcirRZxuC
 tIbd6/eNeyYsw==
Date: Tue, 07 Jan 2025 12:22:35 -0600
MIME-Version: 1.0
To: Ninad Palsule <ninad@linux.ibm.com>
In-Reply-To: <20250107162350.1281165-3-ninad@linux.ibm.com>
References: <20250107162350.1281165-1-ninad@linux.ibm.com>
 <20250107162350.1281165-3-ninad@linux.ibm.com>
Message-Id: <173627415580.1273439.8070481995690256439.robh@kernel.org>
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 07 Jan 2025 10:23:39 -0600, Ninad Palsule wrote: >
 Add device tree binding document for the IPMB device interface driver. >
 > Signed-off-by: Ninad Palsule <ninad@linux.ibm.com> > --- > .../dev [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tVEE4-00085n-0Q
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
From: "Rob Herring \(Arm\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Rob Herring \(Arm\)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, pabeni@redhat.com,
 linux-aspeed@lists.ozlabs.org, minyard@acm.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, ratbert@faraday-tech.com, kuba@kernel.org,
 krzk+dt@kernel.org, openipmi-developer@lists.sourceforge.net,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Tue, 07 Jan 2025 10:23:39 -0600, Ninad Palsule wrote:
> Add device tree binding document for the IPMB device interface driver.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dts:21.17-30: Warning (reg_format): /example-0/i2c/i2c@10:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dts:18.13-24.11: Warning (i2c_bus_bridge): /example-0/i2c: incorrect #address-cells for I2C bus
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dts:18.13-24.11: Warning (i2c_bus_bridge): /example-0/i2c: incorrect #size-cells for I2C bus
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'i2c_bus_bridge'
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dts:19.20-23.15: Warning (avoid_default_addr_size): /example-0/i2c/i2c@10: Relying on default #address-cells value
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dts:19.20-23.15: Warning (avoid_default_addr_size): /example-0/i2c/i2c@10: Relying on default #size-cells value
Documentation/devicetree/bindings/ipmi/ipmb-dev.example.dtb: Warning (unique_unit_address_if_enabled): Failed prerequisite 'avoid_default_addr_size'

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250107162350.1281165-3-ninad@linux.ibm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
