Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B715F8A5D
	for <lists+openipmi-developer@lfdr.de>; Sun,  9 Oct 2022 11:26:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ohSZt-00059L-Rf;
	Sun, 09 Oct 2022 09:26:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1ohSZs-00058e-78
 for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 09:26:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=260/9mSp6N4PpoN+t1d8Szrje/MbRn7Uh6Ecn3s2qCU=; b=O7Igfq2r/3PorLzcSEb2yKDHfG
 8CnlXg5pZfYMjVH3x+GN5c6mXKs4UQe2LuH4YzFxOPqqnzCKAL7Bbpmn2VSM4TaX9c1qZ/NMp2MTM
 rwKmcRB8T/3N3tivx/YIAIEmMgB9pT1scoC19STg2WHqeNM3qQyvQrxWa5oMa8ZaoaiE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=260/9mSp6N4PpoN+t1d8Szrje/MbRn7Uh6Ecn3s2qCU=; b=OVWdThf26ut0cx+dFhB3ZOm7v8
 AfmOHL/sMNtVVt+06d9m39JdZb9ffl+oOekwyiyFOkHEyLNZv2o9yhg44klX5I5Nu0aLHfb8UBGaH
 XMr5OdL3CqQDzDm8L0hl51RqpGxGNnfp2nRS8Sji+mIViteLKOT+NKSzj3+w2tQgao6I=;
Received: from mail-qv1-f54.google.com ([209.85.219.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohSZo-00HXBJ-0h for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 09:26:32 +0000
Received: by mail-qv1-f54.google.com with SMTP id h10so5644060qvq.7
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 09 Oct 2022 02:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=260/9mSp6N4PpoN+t1d8Szrje/MbRn7Uh6Ecn3s2qCU=;
 b=zJER6xqZquJ/D6Jn6QCwMKJQKP0O8vuTCfztN0u7I4uVIW8F9fysfOJhyloKWH03b9
 rT1mwwjyFDrbMIk6uUuB1va9N6qkz6dfHnKLsvX36Om4cILlHvh90JnI3/MkIE27+DOL
 BVbKeCLk/OOHz0qYSWO1VFVV6nesf2YOzWHOGfZLlRMESh6eoBzCM5KbiMfHHTkisquB
 0BYHKDWu+REcQozKfAcqNSxNxhE0WsLoRKsObc9YQHBXAvutEY6JJirtUxzvzzyYQOHJ
 CIinOXqVH5g1dPDi20DbS5k6XJnXdmwUuUcB11dN7OPMld8FztoBkSd3NmpyPj1sjkcq
 Q+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=260/9mSp6N4PpoN+t1d8Szrje/MbRn7Uh6Ecn3s2qCU=;
 b=71HAlu1Jm5vmqTQWx1V+EjNrZlHZMrPXReoyn2ytQRX/WX1rEwoDfqTzxXna8O/9UD
 dpv4XeySQTZDkqQoU+eMnMfNAnrW5/LtDmz5JykNWzwVanzwdbKaA2g4YNlSWy9MlHe6
 XT1NdBrM3sxZaTBaLZQ3w6hvwB2qzM/Vx92Q72jKjP+/ufRquVXSM5OVMUnsqzl4lYMN
 mJpTQVszNWbiA4m3eLQUXfWuiszDrLB5GRnhRtWUKsdZmUyKJ92ZBWmk/flIhaCFLmmg
 FIY0UTAKBGBqm6TV8zjJi1O8KKE+/gkfmwGpNz0Jsj8Dx4J6tagkU2AvpBwpdlPT8UpV
 b/+A==
X-Gm-Message-State: ACrzQf13kJEGWfIL92mP72xP9ckG93I9GiUusmlTmA7mB1V2Pu4eFkim
 HeOKi9D1o01ITqYzmSBGQWVj8otkN8fGcs8B
X-Google-Smtp-Source: AMsMyM7rJdAD6jzLSqpd5byQGnIXhnyu1XJxY73dndrP6nl4twcAIGjdUQT+yuvVkQdugSwgSiCLSg==
X-Received: by 2002:a17:902:bb96:b0:17d:9ed7:e9af with SMTP id
 m22-20020a170902bb9600b0017d9ed7e9afmr13013182pls.15.1665307110193; 
 Sun, 09 Oct 2022 02:18:30 -0700 (PDT)
Received: from localhost.localdomain ([139.177.225.234])
 by smtp.gmail.com with ESMTPSA id
 f38-20020a635566000000b004405c6eb962sm4328711pgm.4.2022.10.09.02.18.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Oct 2022 02:18:29 -0700 (PDT)
From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
To: minyard@acm.org
Date: Sun,  9 Oct 2022 17:18:11 +0800
Message-Id: <20221009091811.40240-4-zhangyuchen.lcr@bytedance.com>
X-Mailer: git-send-email 2.37.0 (Apple Git-136)
In-Reply-To: <20221009091811.40240-1-zhangyuchen.lcr@bytedance.com>
References: <20221009091811.40240-1-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  After the IPMI disconnect problem, the memory kept rising
 and we tried to unload the driver to free the memory. However, only part of
 the free memory is recovered after the driver is uninstalled. Usin [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.54 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ohSZo-00HXBJ-0h
Subject: [Openipmi-developer] [PATCH v2 3/3] ipmi: fix memleak when unload
 ipmi driver
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

After the IPMI disconnect problem, the memory kept rising and we tried
to unload the driver to free the memory. However, only part of the
free memory is recovered after the driver is uninstalled. Using
ebpf to hook free functions, we find that neither ipmi_user nor
ipmi_smi_msg is free, only ipmi_recv_msg is free.

We find that the deliver_smi_err_response call in clean_smi_msgs does
the destroy processing on each message from the xmit_msg queue without
checking the return value and free ipmi_smi_msg.

deliver_smi_err_response is called only at this location. Adding the
free handling has no effect.

To verify, try using ebpf to trace the free function.

  $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc rcv
      %p\n",retval);} kprobe:free_recv_msg {printf("free recv %p\n",
      arg0)} kretprobe:ipmi_alloc_smi_msg {printf("alloc smi %p\n",
        retval);} kprobe:free_smi_msg {printf("free smi  %p\n",arg0)}'

Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c8a3b208f923..bd522868efef 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3710,12 +3710,15 @@ static void deliver_smi_err_response(struct ipmi_smi *intf,
 				     struct ipmi_smi_msg *msg,
 				     unsigned char err)
 {
+	int rv;
 	msg->rsp[0] = msg->data[0] | 4;
 	msg->rsp[1] = msg->data[1];
 	msg->rsp[2] = err;
 	msg->rsp_size = 3;
-	/* It's an error, so it will never requeue, no need to check return. */
-	handle_one_recv_msg(intf, msg);
+
+	rv = handle_one_recv_msg(intf, msg);
+	if (rv == 0)
+		ipmi_free_smi_msg(msg);
 }
 
 static void cleanup_smi_msgs(struct ipmi_smi *intf)
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
