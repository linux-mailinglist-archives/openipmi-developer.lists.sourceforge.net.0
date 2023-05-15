Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 209F9708289
	for <lists+openipmi-developer@lfdr.de>; Thu, 18 May 2023 15:21:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pzdZV-0007hD-0l;
	Thu, 18 May 2023 13:21:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chen.yu@easystack.cn>) id 1pyXaM-0004VO-VR
 for openipmi-developer@lists.sourceforge.net;
 Mon, 15 May 2023 12:45:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jkK5Qo5wQmHVnKZRgfshW6bgqWozm4upVJjsa+zEIT8=; b=Ak3o9hqzWXCmdO8flS2R7DYTsh
 YHTGU1DM6p3OL4cjfHk8Ar34BVDI5huir0ga7t6Pb3FK4rTLjTQvY/d/HnM+w2oxPSXx7s6jRyWp+
 qgezm0jo/Hzu2AEijqI7DE2GQ5bYIJMDoIHc09bCPVB5YQJagCH+MTmYAj1HzDCfb1GE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jkK5Qo5wQmHVnKZRgfshW6bgqWozm4upVJjsa+zEIT8=; b=M
 dbDjyKSPcvxc57JRFHILWCqmxmFyu9DwvDIBNRksfJXVZiVzSkXH5BC4blPPgTDe3l45XuB92I5fv
 yOhkYye071RE85gsuUw4nzKfEsZpKLgasf891lr3CyOoTqEyB3Bhyc7JjLsG0KATcM8nbJIYMIHce
 XDmMdvr+ls+4jfMs=;
Received: from mail-m2836.qiye.163.com ([103.74.28.36])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pyXaG-0003PG-Nh for openipmi-developer@lists.sourceforge.net;
 Mon, 15 May 2023 12:45:55 +0000
Received: from ubuntu.localdomain (unknown [36.170.45.137])
 by mail-m2836.qiye.163.com (Hmail) with ESMTPA id 796BFC0237;
 Mon, 15 May 2023 20:19:54 +0800 (CST)
From: Yu Chen <chen.yu@easystack.cn>
To: minyard@acm.org
Date: Mon, 15 May 2023 05:19:41 -0700
Message-Id: <20230515121941.59859-1-chen.yu@easystack.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFJQjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZHRkeVhpIQk0YS0xNTU5KSlUZERMWGhIXJBQOD1
 lXWRgSC1lBWUhNVUpMS1VPTlVKSExZV1kWGg8SFR0UWUFZT0tIVUpKS0hKQ1VKS0tVS1kG
X-HM-Tid: 0a881f5a58b1841ekuqw796bfc0237
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MC46EBw6SzJPNxxIDz0MARYR
 NRUaCi5VSlVKTUNPSk5ISkJOSU9LVTMWGhIXVRgTHhVVAg47HhoIAggPGhgQVRgVRVlXWRILWUFZ
 SE1VSkxLVU9OVUpITFlXWQgBWUFIS0pKNwY+
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: A simple reproducer demonstrating the problem: (use
 ipmi_watchdog.ko) In one terminal: $ cat /dev/watchdog ... 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.74.28.36 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.74.28.36 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pyXaG-0003PG-Nh
X-Mailman-Approved-At: Thu, 18 May 2023 13:21:32 +0000
Subject: [Openipmi-developer] [PATCH] watchdog: Avoid 100% CPU usage during
 reading watchdog when a task get signal
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
Cc: openipmi-developer@lists.sourceforge.net, chen.yu@easystack.cn,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

A simple reproducer demonstrating the problem: (use ipmi_watchdog.ko)

In one terminal:

$ cat /dev/watchdog
...

In another terminal:

$ ps -aux | grep cat
14755 pts/1    R+    43:00 cat /dev/watchdog
51943 pts/2    S+     0:00 grep --color=auto cat

$ kill -9 14755
$
$ cat /proc/14755/status | grep SigPnd
SigPnd: 0000000000000100
$
$ top

Tasks: 1049 total,   2 running, 1047 sleeping,   0 stopped,   0 zombie
%Cpu(s): 0.0 us, 1.0 sy, 0.0 ni, 98.9 id, 0.0 wa, 0.0 hi, 0.0 si, 0.0 st
MiB Mem : 522594.8 total, 517241.4 free,  2922.1 used,   2431.2 buff/cache
MiB Swap:      0.0 total,      0.0 free,     0.0 used. 516589.2 avail Mem

PID USER    PR  NI    VIRT    RES    SHR S  %CPU  %MEM  TIME+ COMMAND
14755 root  20   0  215552   1024    576 R 100.0  0.0  0:15.12 cat
53417 root  20   0  224960   7040   3648 R   0.7  0.0  0:00.10 top
11 root     20   0       0      0      0 I   0.3  0.0  0:02.85 rcu_sched
1772 root   20   0  512256 387776 380800 S   0.3  0.1  0:32.05 python

We can see that when the cat process gets the signal, the CPU usage
is 100%, Since signal_pending is true, the pick_next_task function
in schedule always returns itself, it retries schedule indefinitely.
ipmi_read() will busyloop.

Signed-off-by: Yu Chen <chen.yu@easystack.cn>
---
 drivers/char/ipmi/ipmi_watchdog.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 0d4a8dcac..173ed4266 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -803,6 +803,11 @@ static ssize_t ipmi_read(struct file *file,
 		init_waitqueue_entry(&wait, current);
 		add_wait_queue(&read_q, &wait);
 		while (!data_to_read) {
+			if (signal_pending(current)) {
+				remove_wait_queue(&read_q, &wait);
+				rv = -ERESTARTSYS;
+				goto out;
+			}
 			set_current_state(TASK_INTERRUPTIBLE);
 			spin_unlock_irq(&ipmi_read_lock);
 			schedule();
@@ -810,10 +815,6 @@ static ssize_t ipmi_read(struct file *file,
 		}
 		remove_wait_queue(&read_q, &wait);
 
-		if (signal_pending(current)) {
-			rv = -ERESTARTSYS;
-			goto out;
-		}
 	}
 	data_to_read = 0;
 
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
