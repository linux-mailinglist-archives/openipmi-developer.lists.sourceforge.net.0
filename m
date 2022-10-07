Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 327FD5F7DCB
	for <lists+openipmi-developer@lfdr.de>; Fri,  7 Oct 2022 21:17:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogsqb-0007TJ-LB;
	Fri, 07 Oct 2022 19:17:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1ogk1s-0002tl-FE
 for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 09:52:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xDa4fYIyPpnZcWibGvKtypceWD40K8dmEbb3u80G0WI=; b=itWk9JPENQ4RNjB3qd75kjd4hl
 9v/EZ3IWP1agm1A+uMODptO45StvSEQdcQa0g++tR3SHkTSrLZg3q6CXiv6YKJQ+1OhbsI/KamsFz
 M+e7fTODER/8+x6iGdVOJLAlcRVCaAAjtoFykeUD7bE74sUwrvfFbIb1c0Jn74xiq6kM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xDa4fYIyPpnZcWibGvKtypceWD40K8dmEbb3u80G0WI=; b=Z
 8v1fNUkSqlrvQ30TxC7dhGfY+Wn3fltPV1b+TK9vsftSNzghXGXSLYztZgtJ2qp//wQR1XPIpNH61
 0h20fXRi00oJNfNM7lbblueh7hpm8/tvqnjngK6hHbURCyO8qNjtKB3P3z5QVjUhIB3RW2FXuv8xe
 E1IR9XjgEvF0aODs=;
Received: from mail-oa1-f48.google.com ([209.85.160.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogk1l-0000wM-Kg for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 09:52:28 +0000
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-1326637be6eso5003888fac.13
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 07 Oct 2022 02:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=xDa4fYIyPpnZcWibGvKtypceWD40K8dmEbb3u80G0WI=;
 b=L40uxyR0CollaFGUsOY6UFpQoE7hzC6H4hwR6PpBjp1I7LWrmKmTsXtVJikTBAmJpl
 p39jjC02y4EE6Yq9+2SuvnZYdaGAjV2+96bVR++2hWXWBhzBLt7fWctyu8pDJVjLioEL
 QyBrtd6vbOZvQI7jHCVG7e3SRk8pdlZ/drC0sxtbhz8EEWCbC4Tq1BHejyackmdEZubB
 Ssr2zh8A+28AqEFKZu721RihY51Gi9jA7xrhB6tJisvD5S8g1RMfwA30Q50HFehD+FsA
 9uP6RfG5J/74jQq+ZrbvyIzQhfSGo7YGx5iNCe4IL/yPbJoMyx0yMoCby1GxPZ7VyyTv
 ThUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xDa4fYIyPpnZcWibGvKtypceWD40K8dmEbb3u80G0WI=;
 b=clbet88KpTojP7gR2iraOqkFXqU+kbx+XUI33A9r+esGnb/nIPsikRN2c1MDw16+rQ
 D36IHASgqngF9i5ctj8C0N8xHeaQEV2O+zLvoiKD1AxiVt+b2yvZhQLIysaJ65j5lPQg
 fNmeNVG464fYxdjQ3NPiOozcw/mpqaSYPQSZxl2lEBY2QYdV+aPkJJv+1nAwVjgsnEUE
 /WxuGvlZgybyaQDY4fGNQY8/1C4LBPulbOHNbno9oSSYjUgxwVvw2HKGTE2MCEX0XGPi
 3uY9a2oKnK8KxGeRWJCUdaXnJmsW0SOD6LBpw5Jawwf1sR7vOY9RcGowMXcTKNVRhkGc
 MpGw==
X-Gm-Message-State: ACrzQf2ggZmFl1Hwi0woQNDvtiDG4akfwe9VE8OmYc5Pn2Ub2oUigkJx
 16Pt4jo4iFcdviDg6AkruWjGeaKEVESf5w==
X-Google-Smtp-Source: AMsMyM4lrZeF2gYZGijDyGwnJnt3Ew81JbBCVh1HfqgLs39WbwJTTWGlhAhILaunsy/Au06JxEGYCA==
X-Received: by 2002:a17:90b:4c05:b0:20b:a8f:de4a with SMTP id
 na5-20020a17090b4c0500b0020b0a8fde4amr8082457pjb.199.1665134787338; 
 Fri, 07 Oct 2022 02:26:27 -0700 (PDT)
Received: from localhost.localdomain ([139.177.225.246])
 by smtp.gmail.com with ESMTPSA id
 p7-20020a170902e74700b0016ef87334aesm1069394plf.162.2022.10.07.02.26.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Oct 2022 02:26:26 -0700 (PDT)
From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
To: minyard@acm.org
Date: Fri,  7 Oct 2022 17:26:14 +0800
Message-Id: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
X-Mailer: git-send-email 2.37.0 (Apple Git-136)
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.48 listed in wl.mailspike.net]
X-Headers-End: 1ogk1l-0000wM-Kg
X-Mailman-Approved-At: Fri, 07 Oct 2022 19:17:21 +0000
Subject: [Openipmi-developer] [PATCH 0/3] ipmi: fix ipmi memleak and unload
 bug
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

Two other issues were solved in the process of solving this problem.

1. Unloading the driver takes a long time.

Fix commit as:
  ipmi: fix long wait in unload when IPMI disconnect

2. Memory leaks during driver unloading.

Fix commit as:
  ipmi: fix memleak when unload ipmi driver


Zhang Yuchen (3):
  ipmi: fix msg stack when IPMI is disconnected
  ipmi: fix long wait in unload when IPMI disconnect
  ipmi: fix memleak when unload ipmi driver

 drivers/char/ipmi/ipmi_kcs_sm.c     | 14 ++++++++++----
 drivers/char/ipmi/ipmi_msghandler.c |  5 ++++-
 drivers/char/ipmi/ipmi_si_intf.c    | 27 +++++++++++++++++++--------
 3 files changed, 33 insertions(+), 13 deletions(-)

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
