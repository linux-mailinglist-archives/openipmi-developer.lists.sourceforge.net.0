Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8345F8A57
	for <lists+openipmi-developer@lfdr.de>; Sun,  9 Oct 2022 11:18:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ohSSG-0002xj-FO;
	Sun, 09 Oct 2022 09:18:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1ohSSA-0002xc-Fs
 for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 09:18:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zzW8eZ7a7hfTNZL5FpK7RIdYTP8PmTGim0k673uis3U=; b=PwBiME8x3OsyT1YvkLBY6M/vpb
 E89Orp+QoqOipzquI5hR45Kpo0bwjsRwfFKFDjJDebU12FNqcEgJvfkdGPN3AZmOfdZsw/jRHX56L
 BLxetd1y6wVLtEYOPkSrBqZ0UvuaR476UUuIqgAMT/MpdRe5sORmkhHT9Mp3yW4QEe24=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zzW8eZ7a7hfTNZL5FpK7RIdYTP8PmTGim0k673uis3U=; b=J+npVHa/ov/PVAX4DMBuzRfnAb
 lz8rMjYv4jAI4ehDRn04ijSvq23h6fMXunwuowP1rMLnaSTMBpsW6mOTARENNVjsRy3iNA2sIv/P5
 GRdBR1F4Q5gh/ZmmndNgvB/a264wveIgz2X8pjCkUNkJQUTU9Jf2qUSB1ZaXDimtPrsU=;
Received: from mail-pj1-f52.google.com ([209.85.216.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohSS5-0004Xw-B1 for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 09:18:34 +0000
Received: by mail-pj1-f52.google.com with SMTP id
 t10-20020a17090a4e4a00b0020af4bcae10so8096791pjl.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 09 Oct 2022 02:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zzW8eZ7a7hfTNZL5FpK7RIdYTP8PmTGim0k673uis3U=;
 b=vLWtU1/9k302WJB1R1VTrd+dZzHdZaWXm75UGvq+XOhcUTNQs1q+gO9JDPy2/QGYSa
 /UTrDI1Q9CSViqHTafA2Y7H+ha77O6fOq1lV0t9+19gXEUGImOzCWJCqvOVLt7vyDL+E
 UTilFJb4p6nXPWL7ntw8FQaeB0nJHFGOacrDU4ligDURcGUJcUFflz1GoJPDR1aL8vGx
 uzmpSowMh4Wd4tTNd+e7/mvxFVGb8eojyslp7UqN6NKPiKo6jMuOEba9MeLdA0MD8X0p
 Dh7s6RUf1qjYH4NXj+furAKRluoFagRteWRlGUbsh3QTLVXI3j3LNZwvMlumbWNo2D9Q
 4+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zzW8eZ7a7hfTNZL5FpK7RIdYTP8PmTGim0k673uis3U=;
 b=R4EcuSJ5waYt4q+tlagw15h9mtAg5IJ3cLnZHNJTK1JTErfU7z3HrVdXGVX/WTK3vf
 Q2eytu0hy1AzO7KkCl9txH+0RdT+7sYcF9MdMMT7zK1tRfdJrDURR0imV2oVJAkK245E
 dyRptCmYol5fXiyPRzInttLl7yKwtdZbvejWtqIUtfpmHJulhOuUCTYglUQ5Aecx3EaJ
 hkwXgLM5+QQ70qQUJmUjsh22gpRjdedayHdIwwOOqshmJ/0I0ihLGyGA+fo4uM58aX+W
 zRiLw7X1fY6A28uF4YjD46zdu+MJb6/C+QEavizqtnnjFmVexTHMHHGA4uoPdgMMnUM5
 xtuA==
X-Gm-Message-State: ACrzQf1LgaaihlEOEoJUsHHcfTal7mnNlZJoUXrwBVaXgOzp4veTz0FG
 9dYbtS5f9DDPuwnzHYjM70rg5g==
X-Google-Smtp-Source: AMsMyM5Pq0fzYL4VXG6ZwI5yV+7ecYkkOYUa+FglI4AO5zX1l3VL+AZd/uxM77w9Qja4hkIUEJ0VoQ==
X-Received: by 2002:a17:902:9a8b:b0:17a:455:d967 with SMTP id
 w11-20020a1709029a8b00b0017a0455d967mr13415545plp.52.1665307103775; 
 Sun, 09 Oct 2022 02:18:23 -0700 (PDT)
Received: from localhost.localdomain ([139.177.225.234])
 by smtp.gmail.com with ESMTPSA id
 f38-20020a635566000000b004405c6eb962sm4328711pgm.4.2022.10.09.02.18.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Oct 2022 02:18:23 -0700 (PDT)
From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
To: minyard@acm.org
Date: Sun,  9 Oct 2022 17:18:09 +0800
Message-Id: <20221009091811.40240-2-zhangyuchen.lcr@bytedance.com>
X-Mailer: git-send-email 2.37.0 (Apple Git-136)
In-Reply-To: <20221009091811.40240-1-zhangyuchen.lcr@bytedance.com>
References: <20221009091811.40240-1-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.52 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.52 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ohSS5-0004Xw-B1
Subject: [Openipmi-developer] [PATCH v2 1/3] ipmi: fix msg stack when IPMI
 is disconnected
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

In addition, the HOSED state should also count as invalid. So the HOSED
is removed from the invalid judgment in start_kcs_transaction().

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
 drivers/char/ipmi/ipmi_kcs_sm.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_kcs_sm.c b/drivers/char/ipmi/ipmi_kcs_sm.c
index efda90dcf5b3..ecfcb50302f6 100644
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
@@ -270,7 +276,7 @@ static int start_kcs_transaction(struct si_sm_data *kcs, unsigned char *data,
 	if (size > MAX_KCS_WRITE_SIZE)
 		return IPMI_REQ_LEN_EXCEEDED_ERR;
 
-	if ((kcs->state != KCS_IDLE) && (kcs->state != KCS_HOSED)) {
+	if (kcs->state != KCS_IDLE) {
 		dev_warn(kcs->io->dev, "KCS in invalid state %d\n", kcs->state);
 		return IPMI_NOT_IN_MY_STATE_ERR;
 	}
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
