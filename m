Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 567479A9568
	for <lists+openipmi-developer@lfdr.de>; Tue, 22 Oct 2024 03:23:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1t33cT-0001HP-WE;
	Tue, 22 Oct 2024 01:23:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1t33cT-0001HJ-BP
 for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Oct 2024 01:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+nflOpJ1k5Cf2lDEoAyTHn5bOyR9tNFOYHzbVfupr0M=; b=DOfasBQ3YJnLU3eHr07XSe+be8
 50skuaCJOYlLBnA1Zuy7JmTiZIgn0Ip/iOrff+LCo0ZtMwk+486N9/GCIRsUaXL5n9CayFhAjRjqY
 hJDk5z9yoMhSuMm3tQbvbctqTS/uzIl5sTWGd1jsKz2ql/EOhMIdRUvOzjW3nZIKuodM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+nflOpJ1k5Cf2lDEoAyTHn5bOyR9tNFOYHzbVfupr0M=; b=P
 d9CDhCccPObtPIJgGEQGwbOJKVn+OzLOSQH5+z5LHtYuYe1NFbphsC9SCju8p4bGNgW5cvke/nprO
 dv97275Dm+FG+RsGVI5iyHW4OFZEP4N2BjHSIlwCrjzjzk/gPHFdT6S7wagOaA7naJCVY705FxIFB
 qG29EDXEUH3bI2Eo=;
Received: from mail-pj1-f53.google.com ([209.85.216.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t33cS-0003tm-3h for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Oct 2024 01:23:32 +0000
Received: by mail-pj1-f53.google.com with SMTP id
 98e67ed59e1d1-2e18293a5efso3348885a91.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 21 Oct 2024 18:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729560201; x=1730165001; darn=lists.sourceforge.net;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+nflOpJ1k5Cf2lDEoAyTHn5bOyR9tNFOYHzbVfupr0M=;
 b=YDbbvmkvVZSC09CocU5BvOL3Pi7nYvRKWTXDnBNqHL7mn+dEpHPRsH+4299c2xw9j3
 YY+7oKnlpeUM+rGq8rj6kWbzNu+cTihQUHnwszRgd4WQD9XRyGSSbv6rimp/0nqt1HAb
 IMduyp2thZ9dVm62t90NgfvosBqzugBtwZLDKtYEBoIZST2FxqLjkzy+5XRXGXwB403J
 XP3g7LX/syiDOAH7jMpQCugv+qv/KfrsNRIgI65QjF1myCr51pxG/6MWWDTdCr3F1Zc7
 wCHF+naJJHcUTcp4mrDYbCmJjpkmw3Pv+SOvGT49GQfqaOeW1/6DJWdSsj/AAeY29Hmk
 TY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729560201; x=1730165001;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+nflOpJ1k5Cf2lDEoAyTHn5bOyR9tNFOYHzbVfupr0M=;
 b=sEMnjBWwX16QKb3Yu0Ayi+IYof19xZ/Fs52rgXDO+LWXGt2QiI1mUvu8hw9yFWIQ38
 FAUmT3ybGx8Mf34fE3tiN36uBZ1DL3MOwFYSoyfWLVq/WuGV8voZz2Gy12xT7nCm8n+d
 bRZobosVd2lF87cgGIeX203/Prg59eUUwPMuMXmoyZT10VOX/0KCkSTvXMvAjwOZj2+K
 6mdLOQXpJVRw1MPzn1lKXXfyA26HrNeQiLyGzTqRlH50HF6BVFdMxm0jrQUBnM7iWlc4
 ceO0hO6d+A5/Fv8tFHmZTEYQm2Xe8txM+oGfiinrdX2hjIna6fLOnDQu6rQxvKpU3ARw
 lypg==
X-Gm-Message-State: AOJu0YxrD/HLuIF93iKdfGh/yEGGx5SDsitL+j/Hz7VoVk3EX/VVUL77
 Hagz7uSlB531y1gqZZFWdimGbaeHnr6hozTAuX3OVwFoXQ3tl2aB
X-Google-Smtp-Source: AGHT+IFpH9RU2ziv2bxygbSHhj6Zj70zW+1nPlHR7YFC+kAWuacLofnLqeXTbuUIimcOjXvQ0UCMcw==
X-Received: by 2002:a17:90a:d90c:b0:2e5:5ab5:ba52 with SMTP id
 98e67ed59e1d1-2e56165ea76mr16533730a91.20.1729560201295; 
 Mon, 21 Oct 2024 18:23:21 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e5ad365d14sm4718919a91.13.2024.10.21.18.23.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2024 18:23:20 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Tue, 22 Oct 2024 09:20:45 +0800
Message-Id: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAO39FmcC/32NTQqDMBBGryKz7pSM2tJ05T2KC38mcUCNZERax
 Ls39QBdvgff+3ZQjsIKz2yHyJuohDlBfsmgG5rZM0qfGHKTl2TIoqo4bEaOK/pFgiK11t6Ns5Z
 agjRbIjt5n8lXnXgQXUP8nA8b/eyf2EZosHwUzHxLyb6o/NTIeO3CBPVxHF9Y+oonsAAAAA==
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quan Nguyen <quan@os.amperecomputing.com>, 
 Patrick Williams <patrick@stwcx.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729560198; l=948;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=UkJsOrwcfH9BNzQhTmrxQCQo4/Kg2M03/sGd8f6tRiA=;
 b=ec/0MNy8XjiQvAWal6jFtLTRVYirTseqj59EcLZg9DyiF/UlHf6qAkMBr8b0lvW8/0la7zinz
 6CGtgqkxLkuD63/Fcx0EynXgs6i1D0MruFmDACf+1MgxSu1/PWKFF0H
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This patch series introduces a GPIO-based alert mechanism
 in the SSIF BMC driver. It allows the BMC to notify the host when a response
 is ready, improving communication efficiency between the BMC and [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t33cS-0003tm-3h
Subject: [Openipmi-developer] [PATCH v2 0/2] ipmi: ssif_bmc: Add GPIO-based
 alert mechanism
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
Cc: devicetree@vger.kernel.org, Cosmo Chou <chou.cosmo@gmail.com>,
 Potin Lai <potin.lai@quantatw.com>, linux-kernel@vger.kernel.org,
 Potin Lai <potin.lai.pt@gmail.com>, Cosmo Chou <cosmo.chou@quantatw.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This patch series introduces a GPIO-based alert mechanism in the SSIF
BMC driver. It allows the BMC to notify the host when a response is
ready, improving communication efficiency between the BMC and host.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
Changes in v2:
- Adding gpio.h include in ssif-bmc.yaml examples.
- Link to v1: https://lore.kernel.org/r/20241019-ssif-alert-gpios-v1-0-483eee5f99d3@gmail.com

---
Cosmo Chou (1):
      ipmi: ssif_bmc: add GPIO-based alert mechanism

Potin Lai (1):
      bindings: ipmi: Add alert GPIO enhancement for SSIF BMC driver

 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml |  8 ++++++++
 drivers/char/ipmi/ssif_bmc.c                         | 15 +++++++++++++++
 2 files changed, 23 insertions(+)
---
base-commit: 8e929cb546ee42c9a61d24fae60605e9e3192354
change-id: 20241019-ssif-alert-gpios-1b9960f991b1

Best regards,
-- 
Potin Lai <potin.lai.pt@gmail.com>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
