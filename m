Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD634A26761
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Feb 2025 00:01:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tf5RM-0003Mz-5i;
	Mon, 03 Feb 2025 23:01:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tf5RK-0003Mr-O1
 for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 23:01:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pyPlbmzdNy+ozLRLu+PL0IeHsFxjphyqgxVQfOygGFw=; b=d4RT+jyN7m1VYqnxwn81nvS4F5
 QznkVzzBHwBYvIHL4+dVxJpdohoVUYIrlFeZGyTu2POWjfgCnbr67P8koEvfS1UZsAwvoV+aP3ljq
 OOvNBw8EncpZ727mXVP5wdEdHHisl9Z6+oy+GmO237xOtPORW4eLn+CaKpoYNY3dFZSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pyPlbmzdNy+ozLRLu+PL0IeHsFxjphyqgxVQfOygGFw=; b=PDs8z0ZxOd7mqX6q9GZ6dyH5mx
 BBAGPFy8Zna9R28h3musi0nilv/XqcK98ncRV5CO6Jk6qcpwIj7tujWZzrOrgYzcPECdV/uFM7Ey6
 jmkPJQ87e0Bgx6I3gdbQdLgvJZgf8nJk+ZnnclWzm37qCGQFFvCTyXSWu7HQhNsk8Mak=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tf5RK-00023O-1u for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 23:01:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2E5A8A41F41;
 Mon,  3 Feb 2025 22:59:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1E9EC4CEE0;
 Mon,  3 Feb 2025 23:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1738623663;
 bh=SYLHmixviQoIpESsL58YplO1Ev5dZ26Prpu2dtnbuok=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jq3YEzbM5g1Jc+vUThYy5+MzRuB3bVDl2bV+KXfIhcBq1SqkHDVZR9uF0PSR7edhq
 OK1TgAxRSETSpJzFvxPYOl+oP1HA832d0+fnt3JI8B28hmqSm7pEj2Bo9UF/0q+ffB
 0LaiQCs9mwJe1NjKFNZTIOGLJ9PWJdvCiHlVBXn9cHEkoWTWyb4jX8dVaz3X7JE8ND
 1AsIJGnFPLRDUAdcKEytwK/kuThZp/5uartgvC+gZhFCFXIk24+Nhmpw5eJNIYc151
 DRJcf/MRWOWVmFN4UsWAxVEQNn/yXhie7sRS+ugRGHEtyaGZRKDnj1kTcNDug3lIPg
 4Vf8O/WXy2GCw==
Date: Mon, 3 Feb 2025 17:01:01 -0600
To: Potin Lai <potin.lai.pt@gmail.com>
Message-ID: <173862366090.502195.2408290922979845637.robh@kernel.org>
References: <20250203-ssif-response-timeout-ms-v1-0-6fe279740181@gmail.com>
 <20250203-ssif-response-timeout-ms-v1-1-6fe279740181@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250203-ssif-response-timeout-ms-v1-1-6fe279740181@gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 03 Feb 2025 21:09:13 +0800, Potin Lai wrote: > The
 SSIF response is handled by a userspace application, which may exceed > the
 default 500 ms timeout when the BMC or application is under heavy [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tf5RK-00023O-1u
Subject: Re: [Openipmi-developer] [PATCH 1/2] bindings: ipmi: ssif-bmc: Add
 property to adjust response timeout
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
 Potin Lai <potin.lai@quantatw.com>, linux-kernel@vger.kernel.org,
 Corey Minyard <corey@minyard.net>, Patrick Williams <patrick@stwcx.xyz>,
 Cosmo Chou <cosmo.chou@quantatw.com>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Mon, 03 Feb 2025 21:09:13 +0800, Potin Lai wrote:
> The SSIF response is handled by a userspace application, which may exceed
> the default 500 ms timeout when the BMC or application is under heavy load.
> 
> Add a new device tree property, `timeout-ms`, allowing platforms to adjust
> the response timeout based on their specific requirements. This helps
> prevent timeouts in scenarios where longer processing times are expected.
> 
> Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> ---
>  Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
