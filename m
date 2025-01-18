Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A4CA15B54
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Jan 2025 04:51:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYzrv-0002oE-Rj;
	Sat, 18 Jan 2025 03:51:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kuba@kernel.org>) id 1tYzrt-0002nx-Vw
 for openipmi-developer@lists.sourceforge.net;
 Sat, 18 Jan 2025 03:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/DyfZWIIA96g0Ckt/iF1SREvxeObReWViBxkd40Wrkw=; b=YyCbj3URFhanK6mFQRm9nv3o8j
 tfeJ19Qp6M2DP8jDn15w4/MNYtmGv9egDfo11FFxkEFYIf0SMW38wGvcxSfxz6Y9GiyveXbLbCHKw
 f7Vde2M+zo7rtMWaQ5FdBqLD/qyNiU/Y8s4STAr2zPMJJH/kGhUBxgiKwV19yfSShMNE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/DyfZWIIA96g0Ckt/iF1SREvxeObReWViBxkd40Wrkw=; b=Z5QlLzc+A3Okp+4TuIszoHDQpn
 VnaytYaAAutAqODDoxbjolpGy2ROyBvQB6ufssE9P84UIfulHT55RZG2bsDyzb1EhW/ggjrgX8dj5
 4/k1wVcVZNIMVr9RZ2YKm3pDlaD5F88zgIOvE5XBi32AgcWO7FBL88tjqIyFK7Qp/bLI=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYzrt-0007kK-AZ for openipmi-developer@lists.sourceforge.net;
 Sat, 18 Jan 2025 03:51:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B43DBA43169;
 Sat, 18 Jan 2025 03:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A859CC4CED1;
 Sat, 18 Jan 2025 03:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1737172278;
 bh=/DyfZWIIA96g0Ckt/iF1SREvxeObReWViBxkd40Wrkw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Wg4O7nHqeAoZVFYyETYyeYu6pLx6d3Q1QDps4UyzGqUKor6alhi/0n71XGBldQ4HW
 TZHLh9qrSEZu5RiK1HiCETkuZ1otS4LxtUJY6RwUDnfymgyNy3ZbrOKVDeEBj9q7CU
 UXN0fhkBZw7KqeXXZPBMGEXi55Z/M9coD9wv2rMoS8l9qMX42xjPco8QGcWlCVpt7r
 gBzDWBu+xgQnyce5DuwaRJ4ubCN1fvudUEEqWXVRWjVTxqmFncxVG0lakKlY4uLFez
 v2s8ETIJ+tuqmEYDoo6wEkJkG31MGrlc4fLDXUJLpJQYAa6foQhUuxHZJMAuI2mox+
 CQFRLjx1V97pg==
Date: Fri, 17 Jan 2025 19:51:16 -0800
To: andrew+netdev@lunn.ch
Message-ID: <20250117195116.4211ef42@kernel.org>
In-Reply-To: <20250116203527.2102742-2-ninad@linux.ibm.com>
References: <20250116203527.2102742-1-ninad@linux.ibm.com>
 <20250116203527.2102742-2-ninad@linux.ibm.com>
MIME-Version: 1.0
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 16 Jan 2025 14:35:16 -0600 Ninad Palsule wrote: >
 Aspeed device supports rgmii, rgmii-id, rgmii-rxid, rgmii-txid so > document
 them. Andrew, just to be sure - you're okay with extending the bindings? 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tYzrt-0007kK-AZ
Subject: Re: [Openipmi-developer] [PATCH v6 01/10] dt-bindings: net: faraday,
 ftgmac100: Add phys mode
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
From: Jakub Kicinski via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-aspeed@lists.ozlabs.org,
 minyard@acm.org, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org,
 Ninad Palsule <ninad@linux.ibm.com>, edumazet@google.com, krzk+dt@kernel.org,
 pabeni@redhat.com, openipmi-developer@lists.sourceforge.net,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, 16 Jan 2025 14:35:16 -0600 Ninad Palsule wrote:
> Aspeed device supports rgmii, rgmii-id, rgmii-rxid, rgmii-txid so
> document them.

Andrew, just to be sure - you're okay with extending the bindings?


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
