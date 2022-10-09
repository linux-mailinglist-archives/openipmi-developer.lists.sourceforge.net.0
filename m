Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 150EB5F8A5B
	for <lists+openipmi-developer@lfdr.de>; Sun,  9 Oct 2022 11:24:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ohSY8-00033s-BZ;
	Sun, 09 Oct 2022 09:24:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1ohSXy-00033h-O8
 for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 09:24:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c06vT1tTPVLhSjiDtSw7P/lMUVOV+4NakOUkmc7Sjy8=; b=ESJxWcjvegm19NTO+xtcV0QUVe
 PWadFRDilfwY9XxZk3ZNzwqI8Z8fYfWOuFTWZk5CspMo30MmP/ChMQMb1kvnnZznfUsdgmtgIhORz
 nyhlt6Bov5K40Zf57acSXOdOv9RejoJNDLxHHBcr1knBc5GnzUpN7uO317lVmcGLOF5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=c06vT1tTPVLhSjiDtSw7P/lMUVOV+4NakOUkmc7Sjy8=; b=H
 0nKtdPikK3igd1cQpugmY5GTFg4EIMfdPWGXYtPKD5hSjhmd0Wlpn1PfHN8hyJrga1ANQmrSCAZt2
 yUXia4xOWg95kIXcYZY6LUjqktz0/fecL5enHQV4acF3PlWhtdPAUNpVGBOxJExTFkAg0eytin4Vj
 C7BMS3Az1LpHpXC8=;
Received: from mail-il1-f171.google.com ([209.85.166.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohSXt-00HX6d-Ld for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 09:24:34 +0000
Received: by mail-il1-f171.google.com with SMTP id y17so4435635ilq.8
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 09 Oct 2022 02:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=c06vT1tTPVLhSjiDtSw7P/lMUVOV+4NakOUkmc7Sjy8=;
 b=w1TFRHD0SeT/pmbr0js9hNBvhXIyM993AaQMjjMtyyLMW0jGsSINsekjNidvj8wuPu
 Gd2M310ffRhfGikgFtxNmvysSYKEjZ1G/cfFGvrU1QOVUHGTM4TR3f5qCoIpvHYZsNFB
 kyiugeuBqvZcTVIIaRck/AU4i9yeVvKSIk79imh4dx8yNVDpszDM92KFVRIpgdeTyTEk
 BkgBTqd0xqH6XLx7jRBXJ90lxLGv1K2VsVVnnEu6K/ceZ6fvQvmLQt5a3651j8vm8Sa0
 HEzJUdBSYy0TpjIrIXctmHOWly0Gd4ARZggDc9xpy3wLeWn0cBoaglO0f8KlI2ffYRsG
 s4MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=c06vT1tTPVLhSjiDtSw7P/lMUVOV+4NakOUkmc7Sjy8=;
 b=KjivDng6pyUSIxvSS/VV/jvs39A5v7m0jVmZpizGIJoFUuuR5E9ez78Kg4pmYohKxw
 XHoF6qetEYmm4ZFae42iLllJyV8WbZex/tNzN7mo5qJ72iMVQGN8oZaoJkrO4B167zDT
 cFBUe6pzHGEs9nhnzGluMXi6KEmK5Yxqb2Ky65r9pCsa5aDp/Jc/VY5cvgePOPjV8t7Q
 oVgBCq70NeXCijMA4q4HOhlwZSK1FLernksxlTR7o8w+gud0w3gDMy2czxFe1p1MVFan
 F/d/7+MNYLv4s1IuSgCq8aWDdzkjRs11IIE0bWVr6c+zztl5lVDqcmahYJa7dYoAwCu/
 fEwA==
X-Gm-Message-State: ACrzQf1BStsU3Ls2R4BthOUn7XOELEU6hilxr4ifHDzZWhokKLO4DYZf
 VxQseN26+31D1O30x+WrtFotDnu+AVj7Xamj
X-Google-Smtp-Source: AMsMyM5oASkCz+aHt3lQVY8qf3o3DB9vnyGCnH02sG9l4RpaUOEVXzzk4KCBR2ME7OAWa/v5Cv/13w==
X-Received: by 2002:a63:1e05:0:b0:451:31d0:8c0f with SMTP id
 e5-20020a631e05000000b0045131d08c0fmr11829727pge.227.1665307100429; 
 Sun, 09 Oct 2022 02:18:20 -0700 (PDT)
Received: from localhost.localdomain ([139.177.225.234])
 by smtp.gmail.com with ESMTPSA id
 f38-20020a635566000000b004405c6eb962sm4328711pgm.4.2022.10.09.02.18.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Oct 2022 02:18:19 -0700 (PDT)
From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
To: minyard@acm.org
Date: Sun,  9 Oct 2022 17:18:08 +0800
Message-Id: <20221009091811.40240-1-zhangyuchen.lcr@bytedance.com>
X-Mailer: git-send-email 2.37.0 (Apple Git-136)
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Our users have reported a memory leak. The IPMI driver
 consumes
 a lot of memory. We found this problem because IPMI was slow to release
 messages
 after being disconnected, causing what appeared to be a memory leak. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.171 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ohSXt-00HX6d-Ld
Subject: [Openipmi-developer] [PATCH v2 0/3] ipmi: fix ipmi memleak and
 unload bug
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Zhang Yuchen <zhangyuchen.lcr@bytedance.com>, qi.zheng@linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Our users have reported a memory leak. The IPMI driver consumes a lot of
memory.

We found this problem because IPMI was slow to release messages after
being disconnected, causing what appeared to be a memory leak.

Fix commit as:
  ipmi: fix msg stack when IPMI is disconnected

Two other issues were addressed in the process of solving this problem.

1. Unloading the driver takes a long time.

Fix commit as:
  ipmi: fix long wait in unload when IPMI disconnect

2. Memory leaks during driver unloading.

Fix commit as:
  ipmi: fix memleak when unload ipmi driver


v1: https://lore.kernel.org/lkml/20221007092617.87597-1-zhangyuchen.lcr@bytedance.com/

Changelog in v1 -> v2 (suggested by corey):
 - Change HOSED to the invalid state and not allowed to send.[TESTED]
 - Remove incorrect comment.

Zhang Yuchen (3):
  ipmi: fix msg stack when IPMI is disconnected
  ipmi: fix long wait in unload when IPMI disconnect
  ipmi: fix memleak when unload ipmi driver

 drivers/char/ipmi/ipmi_kcs_sm.c     | 16 +++++++++++-----
 drivers/char/ipmi/ipmi_msghandler.c |  5 ++++-
 drivers/char/ipmi/ipmi_si_intf.c    | 27 +++++++++++++++++++--------
 3 files changed, 34 insertions(+), 14 deletions(-)

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
