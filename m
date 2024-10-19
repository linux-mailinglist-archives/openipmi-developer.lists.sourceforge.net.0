Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 613499A4FBA
	for <lists+openipmi-developer@lfdr.de>; Sat, 19 Oct 2024 18:22:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1t2CDe-0004Z3-GS;
	Sat, 19 Oct 2024 16:22:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1t2CDd-0004Yx-FF
 for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Oct 2024 16:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:Message-Id:References:In-Reply-To:Cc:To:
 From:MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YfJR1iuBKb/lKt7vE3zGQVn4NkDgKoVvT+2iRWBJypk=; b=KzU8T/RAwNUS3qZyDxcihK6SQw
 mVFcEXVsh/jbd2Ar/hTDDI9D5wGbkPBA6UgF3wPk5Bp2ZMdfFiDqTUwbnAZlJTcPJLUkOTvCJ0/mg
 7Sq7sqJzaPenYU5qKofTnC+FG8fDk2441VU9IdABjuLA0ygARudr/aP9mCNVDsAhAkNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:Message-Id:References:In-Reply-To:Cc:To:From:MIME-Version:
 Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YfJR1iuBKb/lKt7vE3zGQVn4NkDgKoVvT+2iRWBJypk=; b=SqGclg99G3eU2NvcYxBhzoIyw8
 tmWpKtGFLb1P5Ln8roRTgeg4uw4ukYc/qYXYVsgRsO9Wi0XJ8iO/FmwgeGeVKL8yEpx6vX39e1INT
 Rx251gHCA7m2iRP1JiWANGwggPsZ6ZAvc6sXvhGFpFPeHjpM0HIkpDc9IpaAh1y1nzmc=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t2CDc-0004s8-Ms for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Oct 2024 16:22:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id EAC87A402ED;
 Sat, 19 Oct 2024 16:22:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FF06C4CEC5;
 Sat, 19 Oct 2024 16:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1729354929;
 bh=DcuAnW//1Mdx7y7zOFVfzAiHbwgjfTP/YPbAj8XfRnM=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=M+QWYHi7YxMyzE1KvSB88DpXJTWA19f6JdCnOWfPXbnEpLCnN31xgB2GBkdaJ1hRf
 ooi//Q9TB1+JyxP91XP2soORrZC9XCAQn5aMroD+8G8FyxKwBSfkZeWJG0S8epQgjz
 EGHECYSePaorTD1QwFm70/91GdC1LPabM58fz3648t7QChwNUGlO6n00A3F+0BucRC
 yONoSLfvVwsMlRUEfZTSsB2sOU0aFhpGrGCrVuqGfrNmLX/6AyTdapEbUnH7uaO4xH
 fMdH5oq8CJVA6J5e9xAye3Juh13Airto2mUcuH99JPPSLjQQ6+tCaPj7TCkwG5MGgF
 kPGMbdlUnC47w==
Date: Sat, 19 Oct 2024 11:22:03 -0500
MIME-Version: 1.0
To: Potin Lai <potin.lai.pt@gmail.com>
In-Reply-To: <20241019-ssif-alert-gpios-v1-1-483eee5f99d3@gmail.com>
References: <20241019-ssif-alert-gpios-v1-0-483eee5f99d3@gmail.com>
 <20241019-ssif-alert-gpios-v1-1-483eee5f99d3@gmail.com>
Message-Id: <172935492333.3562529.4909443000024833728.robh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 19 Oct 2024 23:38:04 +0800,
 Potin Lai wrote: > Introduce
 the `alert-gpios` property to define an alert pin, enabling > the BMC to
 notify the host when a response is available. > > Signed-off-b [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t2CDc-0004s8-Ms
Subject: Re: [Openipmi-developer] [PATCH 1/2] bindings: ipmi: Add alert GPIO
 enhancement for SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Corey Minyard <minyard@acm.org>, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Patrick Williams <patrick@stwcx.xyz>,
 Cosmo Chou <cosmo.chou@quantatw.com>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Sat, 19 Oct 2024 23:38:04 +0800, Potin Lai wrote:
> Introduce the `alert-gpios` property to define an alert pin, enabling
> the BMC to notify the host when a response is available.
> 
> Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> ---
>  Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/ipmi/ssif-bmc.example.dts:25.40-41 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.dtbs:129: Documentation/devicetree/bindings/ipmi/ssif-bmc.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1442: dt_binding_check] Error 2
make: *** [Makefile:224: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241019-ssif-alert-gpios-v1-1-483eee5f99d3@gmail.com

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
