Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F965CF8982
	for <lists+openipmi-developer@lfdr.de>; Tue, 06 Jan 2026 14:49:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3Zezw/7axXviaVv9kPbGMHL23HD0FzUaOzfBmkXxycI=; b=ZfgszYCM/3SxmmeEx2cYouc/V4
	fCC+SLN99kcO89XmI0nyxcHapS27UqgwvNTQzL+xdCdKIY2AyA9Puni31p6CjbTBxgtnRDQa1xzxA
	xnqzZ0yieg7zr5AKdlePakcqg6WX8LTKK+An8lPieVVk3pma/9ciMmGYVvL94FMNWRHo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vd7RG-0000QU-Lp;
	Tue, 06 Jan 2026 13:49:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michallinuxstuff@gmail.com>) id 1vd7RE-0000QE-Ks
 for openipmi-developer@lists.sourceforge.net;
 Tue, 06 Jan 2026 13:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hdvJ4S6FaAKgZiuJHLGUUEATS2YbymY5kCjYSAj5h/0=; b=IkdQz00KeQIO9EiZmG+05Hr3Uf
 2/i+S240j1nizc9TYe/6caSMMDCTn6gp5WW3kkJ/Br2b1S80Jr9c5gd89/7hLq0TAeyb8pL0RBYB9
 gb2ujZtLwc62FPmSBaWX7kPN6qcPh+uur0hAfLIqXFkVzqKZUfS8+i5h6ZM7fjTxNuQs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hdvJ4S6FaAKgZiuJHLGUUEATS2YbymY5kCjYSAj5h/0=; b=K
 2HvtINezeKfeKEJkH8EhsNLtTVCZM11OaGy52BU4kylJSH9wBCcSQAG9d0Ji+qmnAlYBWz25X/Nvp
 c7Mm1KgWufr7TEhmssI8OT9jUe/W87y0Cod1szb0APJlx2i2qtmwDPqqdRaBl1Ub7/MzJgeCvMoex
 KjDgxRGuyj5Affbk=;
Received: from mail-ej1-f49.google.com ([209.85.218.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vd7RF-0000EC-3O for openipmi-developer@lists.sourceforge.net;
 Tue, 06 Jan 2026 13:49:33 +0000
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-b8440cb2dbeso10303166b.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Jan 2026 05:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767707361; x=1768312161; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=hdvJ4S6FaAKgZiuJHLGUUEATS2YbymY5kCjYSAj5h/0=;
 b=S1g9rRFO0Ter3gUBrcKHaAJRvxWKfc1re2oPDDCxaCydzSon4MHzDrrOnEpVdzrLhC
 uNI58b8TWK/IUl1ldn6DNVVvwkO0iurwWdjYcLdp/zf7K8iri1CLxxMQHLB4ugK0hqw+
 sSs2MkiuZPpxa2XwkMk0+ULva+87LWhAEDnG1zoSimqO+8yAZUCv4diT+itpH+YBL1TL
 fohutpzlbradcmb2YIXuOaTLnXqu+STP+znFh/gE8yAkcfcgQbP9aXxY4SNz0tKisyx0
 OPtUIqdLALorKLdr2+He8nF0Wsk48RFwzuJGJbf/Uh1GiD8wYvNFlR1DnpdkI2E6jRoK
 /dDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767707361; x=1768312161;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hdvJ4S6FaAKgZiuJHLGUUEATS2YbymY5kCjYSAj5h/0=;
 b=gwqlj6EnzunA9mo0PZmIS66RwQ1fqsNLOVyIpr3McNb6WTqzYrpzTDyhqkSMMlldXv
 gWLaQffcSHgrXP09N/rGQvpF6Q28j7AUe/+ntv+CH3bE/QUgcD1mSebrkGkDvW/YR0bR
 GnPfXPprLXvmql/OPqvK+gDPP+nzf5LTsomUD4+CtXR6aSQhz//lg3IfLQcNm119bLZ0
 uymSTrPJOoOlBxnv8XvnuiyM9PkGwb6TuLsovexUpuU9tl+cpCx1AUg/+qbI2LkCXF79
 q4sYlgNdzEvs6JC//aM8bNt120Oe29q109a/9bzTiuGPAjB4HumxAieO1TsEhNEsAOGt
 cSKw==
X-Gm-Message-State: AOJu0YxhI8Gx7GwFILPl14374WfS/7k1YKmP5WaYoO8gmYZbsYaoV5Rx
 aFblQPFMObdE7UFnSPDvTi+YoILnw5CBD8rUSsnlS0jBaRcWhtlczGOSVCz4Wjrib5A=
X-Gm-Gg: AY/fxX7rVHIPgJ/tP51GNwAd385OL/5nEX64orCCEyYwBjyq1ii9BBsNyvo5dIazTJ+
 qS2fK9PPBYSdgx35aikapsoA9tXJmVnk1ksoebrCVGW+JBCK1WWv7ViPZxMe+PtxuV7ySPNz+/d
 TuO3cjUUz6lnnZbKZuQnEmd1odbLjKk/0wYVZqT9eHa+z9+ZoWewA7smQ0TEnztkbFpGUcivRaq
 NXDOTx2neq1zbHq/EVb3hdML6M2N3WxRHfsqLr+w6B9xipO7k1gcl9ea3A8TrIK9M3758kEC2QW
 BOzMSC7tT0J0Ct18A/j4ecHTWm9dG7XVDAC3M7knO3rzm0HtkifiziqlHUCa4BXc5kec5VEVKLL
 /Yyifdj0WuwnPK2s7iCCtPr8jr73zQa5QKFhaUjKumJdV1sdjwZgXGQzh7sZ2oNrm/FGssUN1td
 TcZR+oMn/NoEZxQJbYFKnbbSiYcXhkE6AO57qrLLFpZaF2SxdrHR7AG9lG/bZlDCBujUXRDk64G
 LM=
X-Google-Smtp-Source: AGHT+IFFG60zVXHc5tY7uNi+Y5KAPlkpWr/UqeLSSaP11thFxS583e96AwRDXtIFoRr0UgdEdB+mTw==
X-Received: by 2002:a17:906:f595:b0:b76:6020:ed2b with SMTP id
 a640c23a62f3a-b8426bee1f7mr328159566b.45.1767707361126; 
 Tue, 06 Jan 2026 05:49:21 -0800 (PST)
Received: from mb-lenovo.home (83.10.224.155.ipv4.supernova.orange.pl.
 [83.10.224.155]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a5187afsm232125666b.58.2026.01.06.05.49.20
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jan 2026 05:49:20 -0800 (PST)
From: Michal Berger <michallinuxstuff@gmail.com>
To: openipmi-developer@lists.sourceforge.net
Date: Tue,  6 Jan 2026 14:49:21 +0100
Message-ID: <20260106134921.70493-1-michallinuxstuff@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Currently all relevant SDR cmds seems to be fully supported, 
 some are processed even when corresponding bit is not set (e.g. the
 IPMI_SDR_DELETE_SDR_SUPPORTED
 cmd) in the Operation Support field. With that in mind it feels reasonable
 to expect from the main SDR to have all the Operation Support bits set
 (including the update operations (modal, non-modal)). 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [michallinuxstuff(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.49 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vd7RF-0000EC-3O
Subject: [Openipmi-developer] [PATCH] [RFC] lanserv/bmc: Support all SDR
 operations by default
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Currently all relevant SDR cmds seems to be fully supported, some
are processed even when corresponding bit is not set (e.g. the
IPMI_SDR_DELETE_SDR_SUPPORTED cmd) in the Operation Support field.

With that in mind it feels reasonable to expect from the main
SDR to have all the Operation Support bits set (including the
update operations (modal, non-modal)).

The added benefit is that ipmitool can now process the add/delete
timestamps and print them out (instead of just considering them
as "NA").

Signed-off-by: Michal Berger <michallinuxstuff@gmail.com>
---
 lanserv/bmc.c | 2 +-
 lanserv/bmc.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/lanserv/bmc.c b/lanserv/bmc.c
index e72901ba..2eea26dd 100644
--- a/lanserv/bmc.c
+++ b/lanserv/bmc.c
@@ -1215,7 +1215,7 @@ ipmi_emu_add_mc(emu_data_t    *emu,
     mc->sel.time_offset = 0;
     mc->main_sdrs.time_offset = 0;
     mc->main_sdrs.next_entry = 1;
-    mc->main_sdrs.flags |= IPMI_SDR_RESERVE_SDR_SUPPORTED;
+    mc->main_sdrs.flags |= IPMI_SDR_ALL_OPERATIONS_SUPPORTED;
     for (i=0; i<4; i++) {
 	mc->device_sdrs[i].time_offset = 0;
 	mc->device_sdrs[i].next_entry = 1;
diff --git a/lanserv/bmc.h b/lanserv/bmc.h
index fdaf8e51..1881af31 100644
--- a/lanserv/bmc.h
+++ b/lanserv/bmc.h
@@ -388,6 +388,8 @@ void iterate_sdrs(lmc_data_t *mc,
 #define IPMI_SDR_PARTIAL_ADD_SDR_SUPPORTED		(1 << 2)
 #define IPMI_SDR_RESERVE_SDR_SUPPORTED			(1 << 1)
 #define IPMI_SDR_GET_SDR_ALLOC_INFO_SDR_SUPPORTED	(1 << 0)
+/* Includes update support bits (modal, non-modal) */
+#define IPMI_SDR_ALL_OPERATIONS_SUPPORTED		0x6f
 
 void picmg_led_set(lmc_data_t *mc, sensor_t *sensor);
 void set_sensor_bit(lmc_data_t *mc, sensor_t *sensor, unsigned char bit,
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
