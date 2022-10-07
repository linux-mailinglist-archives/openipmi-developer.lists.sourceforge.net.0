Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6965F7DC8
	for <lists+openipmi-developer@lfdr.de>; Fri,  7 Oct 2022 21:17:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogsqb-0007TP-UI;
	Fri, 07 Oct 2022 19:17:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1ogk58-0000Kf-LV
 for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 09:55:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uYMif+HZmQyjZO9+ZrtRzI8yE+UmHNvf6kDayj333yM=; b=P2j1CJZRXCcXXjTH1oAT1n7x9D
 E4wBHohUT6bbkgFbMekB0SxbwApWn1bbB9iv3rClW+zZUYFVoj1noG/OpvNaVNgn+GogpNgV3EJTx
 yvOG0R1vRiYze7ERPxTDufYpq+fTNX+ZMkR+DqOygSrGsboQ2XIjAWyx84/+ewv+He8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uYMif+HZmQyjZO9+ZrtRzI8yE+UmHNvf6kDayj333yM=; b=P8O7uV2aWY60z3VxoMiVFi/wff
 iTzFakvX4BzwfznV54IItwIG2AGyEgMZfVIvGQaOam2o9QnHI1HyClsiA/vk0dELfboul7muXcgZm
 oKmlJqsm4YL1I0LeEUu4qzkBEY5vrIQCTnK95SnEJ9Z+AYYYdGfJuC7bcXEW0I5kq7OA=;
Received: from mail-oa1-f54.google.com ([209.85.160.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogk56-00FeHO-E8 for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 09:55:49 +0000
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-1321a1e94b3so5070621fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 07 Oct 2022 02:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uYMif+HZmQyjZO9+ZrtRzI8yE+UmHNvf6kDayj333yM=;
 b=IJgH2LJRAKKb3Zh5jNt1tdv/nL8M6YMHGQbDTkDIGagqKVMhOLD/EQibxcJFOfPI+3
 GbKP/sce9KFkMWXWcDfh/ESrIJZx/jzodlD404R5hJsejmgEzuR/3zjTfPKeLNBczrU4
 axaxhxJb/uFX+18fPTy6nCXooND3msW928+KF4A5yJF3OuLIrUzEhU7tI7eco84JoF/C
 FHL+Anb0rky8c9Qplzvp5fLo3k0PrURDAzw14f/HNyY2YURBKep2I2PDInOG32HD2WyE
 OqchF9KVt7YIe2GRV3hVbZ4YBO2G73VVkoromtq9ABElBld9jhmS5sgC2SWI7e3sRRBZ
 tITQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uYMif+HZmQyjZO9+ZrtRzI8yE+UmHNvf6kDayj333yM=;
 b=yIERYKc9hykry7Fy7VqP+RdAI1eXWeDS4XaNTdZsIfu71Fp6DnL5QT93KySFDjhiIM
 OYRFao9AptFARgFqnMXxhOo643ChyUCijSqOKQlyjFz1rZTfgnVA3xawPGkZ9AYWmC2G
 OCwCRXsEHrYr96TB6L7xRDgeW6czQAuImxBzODDPof8Pxxr7N++YwrOG95Bl1HN/zp38
 VlY7BN79V7QxIs1BheV11LUkSpvo2VYbDm8tpX1b5hbPqQfnmqEJZKSt8sopyrVnve1Z
 a2QQFcdXbBRluUcVTHfTyOnYuXxa/pp9bB4z+FG5KU/ydspebzXI77KCWjGCBNWr9Kob
 igkA==
X-Gm-Message-State: ACrzQf2kfYIVJBOJ7Ns18UrMFpxNroKbGsuuS/MaKKAPsPjA+at4U2nD
 COBBWAQS4YjJOvc1KSZFldDYG0xdF6UM/A==
X-Google-Smtp-Source: AMsMyM6swTZXN/43XEZxeI+gDRXr7ugI1GutY/HGn3ncQzcLKyspExttOsyubAsVeWKiIv6W+JFUAw==
X-Received: by 2002:a17:90b:38c9:b0:205:e2e2:9ea6 with SMTP id
 nn9-20020a17090b38c900b00205e2e29ea6mr15785006pjb.114.1665134790740; 
 Fri, 07 Oct 2022 02:26:30 -0700 (PDT)
Received: from localhost.localdomain ([139.177.225.246])
 by smtp.gmail.com with ESMTPSA id
 p7-20020a170902e74700b0016ef87334aesm1069394plf.162.2022.10.07.02.26.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Oct 2022 02:26:30 -0700 (PDT)
From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
To: minyard@acm.org
Date: Fri,  7 Oct 2022 17:26:15 +0800
Message-Id: <20221007092617.87597-2-zhangyuchen.lcr@bytedance.com>
X-Mailer: git-send-email 2.37.0 (Apple Git-136)
In-Reply-To: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
References: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: If you continue to access and send messages at a high
 frequency
 (once every 55s) when the IPMI is disconnected, messages will accumulate
 in intf->[hp_]xmit_msg. If it lasts long enough, it takes up a [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ogk56-00FeHO-E8
X-Mailman-Approved-At: Fri, 07 Oct 2022 19:17:21 +0000
Subject: [Openipmi-developer] [PATCH 1/3] ipmi: fix msg stack when IPMI is
 disconnected
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

If you continue to access and send messages at a high frequency (once
every 55s) when the IPMI is disconnected, messages will accumulate in
intf->[hp_]xmit_msg. If it lasts long enough, it takes up a lot of
memory.

The reason is that if IPMI is disconnected, each message will be set to
IDLE after it returns to HOSED through IDLE->ERROR0->HOSED. The next
message goes through the same process when it comes in. This process
needs to wait for IBF_TIMEOUT * (MAX_ERROR_RETRIES + 1) = 55s.

Each message takes 55S to destroy. This results in a continuous increase
in memory.

I find that if I wait 5 seconds after the first message fails, the
status changes to ERROR0 in smi_timeout(). The next message will return
the error code IPMI_NOT_IN_MY_STATE_ERR directly without wait.

This is more in line with our needs.

So instead of setting each message state to IDLE after it reaches the
state HOSED, set state to ERROR0.

After testing, the problem has been solved, no matter how many
consecutive sends, will not cause continuous memory growth. It also
returns to normal immediately after the IPMI is restored.

The verification operations are as follows:

1. Use BPF to record the ipmi_alloc/free_smi_msg().

  $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc
      %p\n",retval);} kprobe:free_recv_msg {printf("free  %p\n",arg0)}'

2. Exec `date; time for x in $(seq 1 2); do ipmitool mc info; done`.
3. Record the output of `time` and when free all msgs.

Before:

`time` takes 120s, This is because `ipmitool mc info` send 4 msgs and
waits only 15 seconds for each message. Last msg is free after 440s.

  $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc
      %p\n",retval);} kprobe:free_recv_msg {printf("free  %p\n",arg0)}'
  Oct 05 11:40:55 Attaching 2 probes...
  Oct 05 11:41:12 alloc 0xffff9558a05f0c00
  Oct 05 11:41:27 alloc 0xffff9558a05f1a00
  Oct 05 11:41:42 alloc 0xffff9558a05f0000
  Oct 05 11:41:57 alloc 0xffff9558a05f1400
  Oct 05 11:42:07 free  0xffff9558a05f0c00
  Oct 05 11:42:07 alloc 0xffff9558a05f7000
  Oct 05 11:42:22 alloc 0xffff9558a05f2a00
  Oct 05 11:42:37 alloc 0xffff9558a05f5a00
  Oct 05 11:42:52 alloc 0xffff9558a05f3a00
  Oct 05 11:43:02 free  0xffff9558a05f1a00
  Oct 05 11:43:57 free  0xffff9558a05f0000
  Oct 05 11:44:52 free  0xffff9558a05f1400
  Oct 05 11:45:47 free  0xffff9558a05f7000
  Oct 05 11:46:42 free  0xffff9558a05f2a00
  Oct 05 11:47:37 free  0xffff9558a05f5a00
  Oct 05 11:48:32 free  0xffff9558a05f3a00

  $ root@dc00-pb003-t106-n078:~# date;time for x in $(seq 1 2); do
  ipmitool mc info; done

  Wed Oct  5 11:41:12 CST 2022
  No data available
  Get Device ID command failed
  No data available
  No data available
  No valid response received
  Get Device ID command failed: Unspecified error
  No data available
  Get Device ID command failed
  No data available
  No data available
  No valid response received
  No data available
  Get Device ID command failed

  real        1m55.052s
  user        0m0.001s
  sys        0m0.001s

After:

`time` takes 55s, all msgs is returned and free after 55s.

  $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc
      %p\n",retval);} kprobe:free_recv_msg {printf("free  %p\n",arg0)}'

  Oct 07 16:30:35 Attaching 2 probes...
  Oct 07 16:30:45 alloc 0xffff955943aa9800
  Oct 07 16:31:00 alloc 0xffff955943aacc00
  Oct 07 16:31:15 alloc 0xffff955943aa8c00
  Oct 07 16:31:30 alloc 0xffff955943aaf600
  Oct 07 16:31:40 free  0xffff955943aa9800
  Oct 07 16:31:40 free  0xffff955943aacc00
  Oct 07 16:31:40 free  0xffff955943aa8c00
  Oct 07 16:31:40 free  0xffff955943aaf600
  Oct 07 16:31:40 alloc 0xffff9558ec8f7e00
  Oct 07 16:31:40 free  0xffff9558ec8f7e00
  Oct 07 16:31:40 alloc 0xffff9558ec8f7800
  Oct 07 16:31:40 free  0xffff9558ec8f7800
  Oct 07 16:31:40 alloc 0xffff9558ec8f7e00
  Oct 07 16:31:40 free  0xffff9558ec8f7e00
  Oct 07 16:31:40 alloc 0xffff9558ec8f7800
  Oct 07 16:31:40 free  0xffff9558ec8f7800

  root@dc00-pb003-t106-n078:~# date;time for x in $(seq 1 2); do
  ipmitool mc info; done
  Fri Oct  7 16:30:45 CST 2022
  No data available
  Get Device ID command failed
  No data available
  No data available
  No valid response received
  Get Device ID command failed: Unspecified error
  Get Device ID command failed: 0xd5 Command not supported in present state
  Get Device ID command failed: Command not supported in present state

  real        0m55.038s
  user        0m0.001s
  sys        0m0.001s

Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
---
 drivers/char/ipmi/ipmi_kcs_sm.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_kcs_sm.c b/drivers/char/ipmi/ipmi_kcs_sm.c
index efda90dcf5b3..e7f2cd10e5a6 100644
--- a/drivers/char/ipmi/ipmi_kcs_sm.c
+++ b/drivers/char/ipmi/ipmi_kcs_sm.c
@@ -122,10 +122,10 @@ struct si_sm_data {
 	unsigned long  error0_timeout;
 };
 
-static unsigned int init_kcs_data(struct si_sm_data *kcs,
-				  struct si_sm_io *io)
+static unsigned int init_kcs_data_with_state(struct si_sm_data *kcs,
+				  struct si_sm_io *io, enum kcs_states state)
 {
-	kcs->state = KCS_IDLE;
+	kcs->state = state;
 	kcs->io = io;
 	kcs->write_pos = 0;
 	kcs->write_count = 0;
@@ -140,6 +140,12 @@ static unsigned int init_kcs_data(struct si_sm_data *kcs,
 	return 2;
 }
 
+static unsigned int init_kcs_data(struct si_sm_data *kcs,
+				  struct si_sm_io *io)
+{
+	return init_kcs_data_with_state(kcs, io, KCS_IDLE);
+}
+
 static inline unsigned char read_status(struct si_sm_data *kcs)
 {
 	return kcs->io->inputb(kcs->io, 1);
@@ -495,7 +501,7 @@ static enum si_sm_result kcs_event(struct si_sm_data *kcs, long time)
 	}
 
 	if (kcs->state == KCS_HOSED) {
-		init_kcs_data(kcs, kcs->io);
+		init_kcs_data_with_state(kcs, kcs->io, KCS_ERROR0);
 		return SI_SM_HOSED;
 	}
 
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
