Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D3B5F7DC9
	for <lists+openipmi-developer@lfdr.de>; Fri,  7 Oct 2022 21:17:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogsqc-0007Td-5n;
	Fri, 07 Oct 2022 19:17:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1ogk7s-0000S1-1D
 for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 09:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zD3O1L1ojBhgR+j1WVoN6w4Vq4fXYzVbRBriwzwY8XQ=; b=AmrZZqLpxPKQ9e9lbWza4mLmIK
 50nP2j2LHwlhqfD05/dB2oSZO1B71WuvsdlJC5VHy6KxaDopeQE/vycv5SfwYy6dhmY+TFdQ2eA/v
 faVdgIdEmvMfApW1ZHWFFaIX/SvlBpE3f4TVXetdR1Z8/tCTxaNus5XP+oYoBJAUrQbg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zD3O1L1ojBhgR+j1WVoN6w4Vq4fXYzVbRBriwzwY8XQ=; b=QttLnZdRaxrIuUrmrAu5sRTSgC
 cw9F4hSEEnElsv6sx9EPJO+tk41S7O49T2vmFz7BgfdIWx98yGAczL+MCNe3GpE6ylbeQ1ISmmphG
 /BsOnXTWPYjnAs8C80oyIrdpljdZ8ob6A7VxlQ/X6x5bPBMNydxefixBu491CH/z3U28=;
Received: from mail-oa1-f50.google.com ([209.85.160.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogk7q-00FeMw-9i for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 09:58:39 +0000
Received: by mail-oa1-f50.google.com with SMTP id
 586e51a60fabf-12c8312131fso5060455fac.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 07 Oct 2022 02:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zD3O1L1ojBhgR+j1WVoN6w4Vq4fXYzVbRBriwzwY8XQ=;
 b=OwW1Pnkg6++3R7dfzassb1BzGQNvxGiMWgBknPF6qEVCitKiSpSdB0a2z4A4hu0rJS
 o1Dxd4LzyKUxW1nfhBLLz3HgMz8PpMWbFXkgyS5o5qDZRhb2pmkR4WTxtNcstz831Cmm
 hs08O0AmhERjCNky7UutIISJB4vpnaYrYkw1Aad/E0SZSKSpUsHaXMK3YBuksVXxgiAt
 /uBWosUhzlupHlUKHu2oPRu3/vJ3DYkvzHepFyz8si4gbWQReryzXjMGnIIdG6pZPQw/
 rjqEzhqrZ0mCfR3X+OpJoF82Jc0JOVx0R7BydFGH9k7iCmkaqP17g0TdaVp5cMOCwJ77
 S1OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zD3O1L1ojBhgR+j1WVoN6w4Vq4fXYzVbRBriwzwY8XQ=;
 b=l0Dw3l0v8/FFqKopEalrM1r4FxybtYpDI6i+WX5m6rCoicKOVgPcSAXzVXfpR2EG2c
 c4Oyd+S3ax3RY8WtRsOvn3lBLdECI1bVhScFUoPcSpdX+Y6EXpVA7F+W3duOsSizPcfi
 Iez3q4QhKAymKPClcHcDdeeC89YMCfrY/tcLy1PQiRI5eTIb6jTtX9ajxv13k714ceiT
 iMJA6/KCUX1gc+UnBdVRJDy6ietAZT9v/L/SPNMqR7WmH7kBO8+fwLTyfSz8xhfCQkHM
 9bo9rpPKrFTP3p9dGz5PSo8NfgfEt0+QwVogXgbhqcsrvbn4T320c8nudvPYyYgG3+rw
 FnOQ==
X-Gm-Message-State: ACrzQf35oZbnjhE9pXfcard38wP7R8ewBC+tmveJ0S0iDZoWPiuZ3/4v
 q4QbFxPy4ANO9cQsl9zNd7RELQ/dpgy8VA==
X-Google-Smtp-Source: AMsMyM62HDWdtXV+hj6G0UxkKeuYhoJ/5th07sKDOtsbYnp8MUdIF1o9hB5IycxViMiliwGEcgof9w==
X-Received: by 2002:a17:90b:1bc2:b0:200:a97b:4ae5 with SMTP id
 oa2-20020a17090b1bc200b00200a97b4ae5mr4483809pjb.147.1665134797159; 
 Fri, 07 Oct 2022 02:26:37 -0700 (PDT)
Received: from localhost.localdomain ([139.177.225.246])
 by smtp.gmail.com with ESMTPSA id
 p7-20020a170902e74700b0016ef87334aesm1069394plf.162.2022.10.07.02.26.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Oct 2022 02:26:36 -0700 (PDT)
From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
To: minyard@acm.org
Date: Fri,  7 Oct 2022 17:26:17 +0800
Message-Id: <20221007092617.87597-4-zhangyuchen.lcr@bytedance.com>
X-Mailer: git-send-email 2.37.0 (Apple Git-136)
In-Reply-To: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
References: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  After the IPMI disconnect problem, the memory kept rising
 and we tried to unload the driver to free the memory. However, only part of
 the free memory is recovered after the driver is uninstalled. Usin [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ogk7q-00FeMw-9i
X-Mailman-Approved-At: Fri, 07 Oct 2022 19:17:21 +0000
Subject: [Openipmi-developer] [PATCH 3/3] ipmi: fix memleak when unload ipmi
 driver
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
 drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c8a3b208f923..7a7534046b5b 100644
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
 	/* It's an error, so it will never requeue, no need to check return. */
-	handle_one_recv_msg(intf, msg);
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
