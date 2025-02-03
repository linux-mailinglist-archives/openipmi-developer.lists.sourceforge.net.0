Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4419A25A70
	for <lists+openipmi-developer@lfdr.de>; Mon,  3 Feb 2025 14:12:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tewF6-0000ht-4N;
	Mon, 03 Feb 2025 13:11:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1tewF4-0000hn-HV
 for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 13:11:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PDJizsvXaw9+teo3wUwPkWJCqORZkNmTQyuSkt5H4CY=; b=JUeUiEgtXkUIcNp1Z2qSvjf42q
 cQcKArvpnIhTEg1Svcuqr6sNA5XCAYSdvcFOxszP39Fuu/heFM3mQa5im6RZK4cu0NOca15aaszt+
 RPdJZU7b6nygFKmT+WB9my96tna9Tofmw8NcsTCaH7NCvoSAeGSfr/MTt4r7mSKTKJUs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PDJizsvXaw9+teo3wUwPkWJCqORZkNmTQyuSkt5H4CY=; b=O7JumkyZCSHO/BZdI3zKGMnw1X
 D9GyT6/mN3GO30HG4j1ytFDJxzlG33/ng3DfsZdDNOnOki6EXvDv2BDXBMNQJ1Jwg91kCQDwuLZ9J
 0rRmRnJajomvX7/ev9nNm6NhlWfCPXLlb1vu+wuIUT7R7xSSolvqiWcxFun3BEDMPTNI=;
Received: from mail-pl1-f175.google.com ([209.85.214.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tewF2-000272-V9 for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 13:11:57 +0000
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-2165cb60719so76353355ad.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 03 Feb 2025 05:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738588310; x=1739193110; darn=lists.sourceforge.net;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=PDJizsvXaw9+teo3wUwPkWJCqORZkNmTQyuSkt5H4CY=;
 b=RYhzt8KorD2JqrbCwtk0sIcIU/a2v53AE4BZVEyvn9kCDeW0OLOE7BX0V6PAbx7qDq
 xmZYvdOx5zOwZGAd6Wj9YGH4HVuAffrYau9QpuoDx9nKq1BX+s22o1vjGxtkrgCYjp9Q
 FAjZENM9OiNhjNOG6SP4G4xYwrEOKnWjM5n6w98erUCK8ouGRz4dAPZ+FZ00xXTxCaDN
 j76hSK3alw5cUbGqoXvuBhgVqm72G9B5jwZiR2Oi51UD43Ha/WTgYLCr0AtMZ0KRMnt4
 FO0T815OY2CH9olSE9dJH5gw7Yf/bbVbli78Xallx8WOlCflnm1SPiOLGmIonByvIRTV
 vuqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738588310; x=1739193110;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PDJizsvXaw9+teo3wUwPkWJCqORZkNmTQyuSkt5H4CY=;
 b=gj5yTRRX+h0tOMNr/zKRxqfqx83ia/mZYzoUdm0WLU+rt6PqOW6fPOcu0DmiH/Tvku
 cvtKLg3voe4WQhs1yZvMjDtPzUOpFmfVMrq3gdc/PbfEUTSNUlRYqkSNrFabRNsz7CqY
 9Diw0ZDC/S5YTgG1n/lXtakiPO+jIU7K8QTBBuQDxcao9E4wg7FaKo8RZ2vGOPCYRazL
 pvRzpUWRBTQWbAIJVvVt94pvVd0cndhvY8+dY0T6XOq1qh8PcqFZ8I7hFjDwV2Op/gPC
 1766cQXkECmqEoBzayxS3tMR9tgWghrJ6r08wCEitl09efA0O0PVmCDCwuWqR73Lknh2
 JSoA==
X-Gm-Message-State: AOJu0YwDMdX0mG806m6RKeZ1t6YGEdxyX70yxuBXBm7+z9x4beKsTIcy
 glQxJQGOsHYoI4Mo/stYcfkQ/iK9UasfDKN6OPDuZ6MtZF5BgLbQ
X-Gm-Gg: ASbGnctUAlwBje3YtunBcmPVjMQDU/X27MHZ6lvtViS1OcCgzeB0Z4I3CQdH/oN2CB3
 2bSvWQ0fOgy/UsBZ1Sy8ugGO8NrgpL0iEjGQtm/Jmra8dK7mruGKb3tWuCr0EnkeP3/cpB6r6tv
 ARmoTdvrRjKOJw0qp51of4wlqN/OprGWQ/uBoeURgmZzeB9up5dePgWdtUP1oLOwXoGuRxoRGvZ
 s8bANQXFTOMKhdEOpQB5DAQrozct4O9JaG2itySL2UJhVIAef2CR0AE6J1JsuJ7cjIjh+mUjN2W
 mhYv49JNL5vrxZop7Jd79oKx/94q2ZsThRXINDhVT5oM1ci+zXWe7BJ00TrccnoChEyB
X-Google-Smtp-Source: AGHT+IHvk6/UEgPuUarQoM3QIGf47jIEwUV97FOhse5NsNON8UUQENswlYanuyKROZD7+6+YsdUArQ==
X-Received: by 2002:a05:6a00:244a:b0:725:f097:ed21 with SMTP id
 d2e1a72fcca58-72fd0c62288mr30218643b3a.15.1738588310373; 
 Mon, 03 Feb 2025 05:11:50 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72fe631be3csm8377629b3a.7.2025.02.03.05.11.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2025 05:11:50 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Mon, 03 Feb 2025 21:09:14 +0800
MIME-Version: 1.0
Message-Id: <20250203-ssif-response-timeout-ms-v1-2-6fe279740181@gmail.com>
References: <20250203-ssif-response-timeout-ms-v1-0-6fe279740181@gmail.com>
In-Reply-To: <20250203-ssif-response-timeout-ms-v1-0-6fe279740181@gmail.com>
To: Corey Minyard <corey@minyard.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quan Nguyen <quan@os.amperecomputing.com>, 
 Patrick Williams <patrick@stwcx.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738588302; l=1887;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=/kUKPWCuiO07PV8wX+eiL75OEyrHSx5RcfpFsjZDG/U=;
 b=6Osmui4mmnSoBdZ1gq0ddokpf1z0Xv5oKdw5ZwDKeeh07nb1EchIXM0IDY8TT+h+DkK/rim1B
 L1S67E8or2BDDYV7xxZSB+Phz0qXdRGzMx2ulkUpkk+1OR2qQ8mhX57
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Implement support for the `timeout-ms` device tree property, 
 allowing platforms to adjust the userspace response timeout as needed. If
 `timeout-ms` is not specified, the default response timeout remains 500 ms.
 This ensures compatibility while providing flexibility for platforms that
 require longer timeouts due to BMC or applicati [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.175 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.175 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.175 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.175 listed in wl.mailspike.net]
X-Headers-End: 1tewF2-000272-V9
Subject: [Openipmi-developer] [PATCH 2/2] ipmi: ssif_bmc: Add support for
 adjustable response timeout
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
Cc: devicetree@vger.kernel.org, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Potin Lai <potin.lai.pt@gmail.com>,
 Cosmo Chou <cosmo.chou@quantatw.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Implement support for the `timeout-ms` device tree property, allowing
platforms to adjust the userspace response timeout as needed.

If `timeout-ms` is not specified, the default response timeout remains
500 ms. This ensures compatibility while providing flexibility for
platforms that require longer timeouts due to BMC or application load.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
 drivers/char/ipmi/ssif_bmc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index 310f17dd9511..8f0fbc941936 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -87,6 +87,7 @@ struct ssif_bmc_ctx {
 	/* Timeout waiting for response */
 	struct timer_list       response_timer;
 	bool                    response_timer_inited;
+	u32                     response_timeout;
 	/* Flag to identify a Multi-part Read Transaction */
 	bool                    is_singlepart_read;
 	u8                      nbytes_processed;
@@ -331,7 +332,8 @@ static void handle_request(struct ssif_bmc_ctx *ssif_bmc)
 		timer_setup(&ssif_bmc->response_timer, response_timeout, 0);
 		ssif_bmc->response_timer_inited = true;
 	}
-	mod_timer(&ssif_bmc->response_timer, jiffies + msecs_to_jiffies(RESPONSE_TIMEOUT));
+	mod_timer(&ssif_bmc->response_timer, jiffies +
+		  msecs_to_jiffies(ssif_bmc->response_timeout));
 }
 
 static void calculate_response_part_pec(struct ssif_part_buffer *part)
@@ -809,6 +811,10 @@ static int ssif_bmc_probe(struct i2c_client *client)
 	if (!ssif_bmc)
 		return -ENOMEM;
 
+	if (of_property_read_u32(client->dev.of_node, "timeout-ms",
+				 &ssif_bmc->response_timeout))
+		ssif_bmc->response_timeout = RESPONSE_TIMEOUT;
+
 	spin_lock_init(&ssif_bmc->lock);
 
 	init_waitqueue_head(&ssif_bmc->wait_queue);

-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
