LOCAL_PATH := $(call my-dir)

local_c_flags += -DOPENSSL_THREADS -D_REENTRANT -DDSO_DLFCN -DHAVE_DLFCN_H -DL_ENDIAN -DOPENSSL_NO_CAMELLIA -DOPENSSL_NO_CAPIENG -DOPENSSL_NO_CAST -DOPENSSL_NO_GMP -DOPENSSL_NO_IDEA -DOPENSSL_NO_JPAKE -DOPENSSL_NO_MD2 -DOPENSSL_NO_MDC2 -DOPENSSL_NO_RC5 -DOPENSSL_NO_SHA0 -DOPENSSL_NO_RFC3779 -DOPENSSL_NO_SEED -DOPENSSL_NO_STORE -DOPENSSL_NO_WHIRLPOOL -DOPENSSL_NO_HW -DOPENSSL_NO_ENGINE -DZLIB -DOPENSSL_NO_BF -DOPENSSL_NO_EC2M -DOPENSSL_NO_SCTP -DOPENSSL_NO_DSA -DOPENSSL_NO_DH -DNO_WINDOWS_BRAINDEATH
local_c_includes += \
	$(LOCAL_PATH)/openssl \
	$(LOCAL_PATH)/openssl/crypto \
	$(LOCAL_PATH)/openssl/crypto/lhash \
	$(LOCAL_PATH)/openssl/crypto/asn1 \
	$(LOCAL_PATH)/openssl/crypto/evp \
	$(LOCAL_PATH)/openssl/crypto/modes \
	$(LOCAL_PATH)/openssl/crypto/ec \
	$(LOCAL_PATH)/openssl/crypto/ecdsa \
	$(LOCAL_PATH)/openssl/crypto/ecdh \
	$(LOCAL_PATH)/openssl/crypto/cms \
	$(LOCAL_PATH)/openssl/include \
	$(LOCAL_PATH)/openssl/include/openssl


include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(addprefix openssl/ssl/, ssl_conf.c t1_ext.c t1_trce.c bio_ssl.c d1_lib.c d1_srvr.c s23_meth.c s2_enc.c s2_srvr.c s3_enc.c s3_srvr.c ssl_ciph.c ssl_rsa.c t1_lib.c tls_srp.c d1_both.c d1_meth.c kssl.c s23_pkt.c s2_lib.c s3_both.c s3_lib.c ssl_algs.c ssl_err2.c ssl_sess.c ssl_txt.c t1_meth.c d1_clnt.c d1_pkt.c s23_clnt.c s23_srvr.c s2_meth.c s3_cbc.c s3_meth.c ssl_asn1.c ssl_err.c ssl_stat.c t1_clnt.c t1_reneg.c d1_srtp.c s23_lib.c s2_clnt.c s2_pkt.c s3_clnt.c s3_pkt.c ssl_cert.c ssl_lib.c t1_enc.c t1_srvr.c)
LOCAL_C_INCLUDES := $(local_c_includes)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/openssl $(LOCAL_PATH)/openssl/include $(LOCAL_PATH)/openssl/crypto
LOCAL_CFLAGS := $(local_c_flags) -fexceptions -frtti -fvisibility=hidden -fdata-sections -ffunction-sections
LOCAL_SHARED_LIBRARIES := crypto
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := ssl
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(addprefix openssl/crypto/, cms/cms_asn1.c cms/cms_att.c cms/cms_cd.c cms/cms_dd.c cms/cms_enc.c cms/cms_env.c cms/cms_err.c cms/cms_ess.c cms/cms_io.c cms/cms_kari.c cms/cms_lib.c cms/cms_pwri.c cms/cms_sd.c cms/cms_smime.c ec/ec2_mult.c ec/ec2_oct.c ec/ec2_smpl.c ec/ec_ameth.c ec/ec_asn1.c ec/ec_check.c ec/ec_curve.c ec/ec_cvt.c ec/ec_err.c ec/ec_key.c ec/eck_prn.c ec/ec_lib.c ec/ec_mult.c ec/ec_oct.c ec/ec_pmeth.c ec/ecp_mont.c ec/ecp_nist.c ec/ecp_nistp224.c ec/ecp_nistp256.c ec/ecp_nistp521.c ec/ecp_nistputil.c ec/ecp_oct.c ec/ec_print.c ec/ecp_smpl.c ecdsa/ecs_asn1.c ecdsa/ecs_err.c ecdsa/ecs_lib.c ecdsa/ecs_ossl.c ecdsa/ecs_sign.c ecdsa/ecs_vrf.c ecdh/ech_err.c ecdh/ech_kdf.c ecdh/ech_key.c ecdh/ech_lib.c ecdh/ech_ossl.c stack/stack.c o_fips.c asn1/f_int.c asn1/asn1_err.c asn1/x_spki.c asn1/d2i_pu.c asn1/x_val.c asn1/x_bignum.c asn1/x_info.c asn1/p5_pbe.c asn1/a_object.c asn1/asn1_par.c asn1/asn_moid.c asn1/a_verify.c asn1/tasn_typ.c asn1/x_attrib.c asn1/x_algor.c asn1/a_octet.c asn1/a_digest.c asn1/tasn_utl.c asn1/x_exten.c asn1/a_print.c asn1/a_strnid.c asn1/p8_pkey.c asn1/t_req.c asn1/bio_asn1.c asn1/a_utctm.c asn1/t_crl.c asn1/x_req.c asn1/t_pkey.c asn1/nsseq.c asn1/a_dup.c asn1/a_set.c asn1/f_enum.c asn1/x_nx509.c asn1/evp_asn1.c asn1/t_bitst.c asn1/x_x509.c asn1/t_x509.c asn1/n_pkey.c asn1/a_type.c asn1/x_sig.c asn1/tasn_new.c asn1/t_spki.c asn1/asn_pack.c asn1/a_bool.c asn1/p5_pbev2.c asn1/a_mbstr.c asn1/a_utf8.c asn1/tasn_dec.c asn1/x_crl.c asn1/asn1_gen.c asn1/x_long.c asn1/tasn_enc.c asn1/bio_ndef.c asn1/asn_mime.c asn1/tasn_fre.c asn1/ameth_lib.c asn1/a_bitstr.c asn1/x_pkey.c asn1/a_strex.c asn1/x_name.c asn1/i2d_pr.c asn1/a_time.c asn1/a_int.c asn1/t_x509a.c asn1/a_bytes.c asn1/f_string.c asn1/i2d_pu.c asn1/x_pubkey.c asn1/a_sign.c asn1/a_i2d_fp.c asn1/a_enum.c asn1/x_x509a.c asn1/a_gentm.c asn1/d2i_pr.c asn1/asn1_lib.c asn1/tasn_prn.c asn1/a_d2i_fp.c cmac/cm_ameth.c cmac/cmac.c cmac/cm_pmeth.c o_dir.c hmac/hm_ameth.c hmac/hm_pmeth.c hmac/hmac.c fips_ers.c sparcv9cap.c bio/b_sock.c bio/b_dump.c bio/bss_log.c bio/bss_mem.c bio/bss_fd.c bio/bss_null.c bio/bss_acpt.c bio/bio_err.c bio/bio_lib.c bio/bss_bio.c bio/bf_null.c bio/bf_nbio.c bio/bss_sock.c bio/bss_file.c bio/bss_conn.c bio/bf_buff.c bio/bf_lbuf.c bio/bio_cb.c bio/b_print.c bio/bss_dgram.c o_time.c pkcs12/p12_decr.c pkcs12/p12_attr.c pkcs12/p12_mutl.c pkcs12/p12_utl.c pkcs12/p12_crt.c pkcs12/p12_asn.c pkcs12/p12_add.c pkcs12/p12_key.c pkcs12/p12_npas.c pkcs12/p12_p8e.c pkcs12/p12_crpt.c pkcs12/pk12err.c pkcs12/p12_kiss.c pkcs12/p12_p8d.c pkcs12/p12_init.c txt_db/txt_db.c err/err_all.c err/err_prn.c err/err.c sha/sha1dgst.c sha/sha512.c sha/sha_one.c sha/sha1_one.c sha/sha_dgst.c sha/sha256.c objects/obj_dat.c objects/obj_xref.c objects/obj_err.c objects/o_names.c objects/obj_lib.c ppccap.c uid.c rand/randfile.c rand/rand_win.c rand/rand_unix.c rand/rand_egd.c rand/rand_nw.c rand/rand_vms.c rand/rand_os2.c rand/rand_lib.c rand/rand_err.c rand/md_rand.c aes/aes_core.c aes/aes_ofb.c aes/aes_cbc.c aes/aes_cfb.c aes/aes_ctr.c aes/aes_ige.c aes/aes_ecb.c aes/aes_wrap.c aes/aes_misc.c conf/conf_mod.c conf/conf_lib.c conf/conf_mall.c conf/conf_err.c conf/conf_api.c conf/conf_def.c conf/conf_sap.c ts/ts_rsp_sign.c ts/ts_rsp_print.c ts/ts_rsp_verify.c ts/ts_err.c ts/ts_rsp_utils.c ts/ts_conf.c ts/ts_lib.c ts/ts_req_print.c ts/ts_req_utils.c ts/ts_verify_ctx.c ts/ts_asn1.c srp/srp_vfy.c srp/srp_lib.c o_str.c pem/pem_oth.c pem/pem_lib.c pem/pem_all.c pem/pem_xaux.c pem/pem_pkey.c pem/pvkfmt.c pem/pem_seal.c pem/pem_err.c pem/pem_sign.c pem/pem_x509.c pem/pem_info.c pem/pem_pk8.c mem_clr.c rsa/rsa_err.c rsa/rsa_none.c rsa/rsa_eay.c rsa/rsa_prn.c rsa/rsa_ameth.c rsa/rsa_depr.c rsa/rsa_ssl.c rsa/rsa_chk.c rsa/rsa_pss.c rsa/rsa_lib.c rsa/rsa_oaep.c rsa/rsa_asn1.c rsa/rsa_saos.c rsa/rsa_null.c rsa/rsa_x931.c rsa/rsa_crpt.c rsa/rsa_gen.c rsa/rsa_sign.c rsa/rsa_pmeth.c rsa/rsa_pk1.c x509v3/v3_scts.c x509v3/v3_prn.c x509v3/v3_akeya.c x509v3/v3_lib.c x509v3/v3_extku.c x509v3/v3_purp.c x509v3/v3_enum.c  x509v3/v3_ocsp.c x509v3/v3_skey.c x509v3/v3_pcia.c x509v3/v3_pci.c x509v3/v3_sxnet.c x509v3/v3_ncons.c x509v3/v3_addr.c x509v3/v3_int.c x509v3/v3_genn.c x509v3/v3_ia5.c x509v3/v3_pku.c x509v3/pcy_map.c x509v3/v3_asid.c x509v3/v3_utl.c x509v3/v3_bcons.c x509v3/pcy_node.c x509v3/pcy_data.c x509v3/v3_cpols.c x509v3/v3_info.c x509v3/v3_akey.c x509v3/v3_pcons.c x509v3/v3_alt.c x509v3/pcy_cache.c x509v3/v3_crld.c x509v3/pcy_lib.c x509v3/v3_bitst.c x509v3/v3_pmaps.c x509v3/pcy_tree.c x509v3/v3_conf.c x509v3/v3err.c o_init.c evp/bio_b64.c evp/bio_enc.c evp/bio_md.c evp/bio_ok.c evp/c_all.c evp/c_allc.c evp/c_alld.c evp/digest.c evp/e_aes.c evp/e_aes_cbc_hmac_sha1.c evp/e_aes_cbc_hmac_sha256.c evp/e_bf.c evp/e_camellia.c evp/e_cast.c evp/e_des3.c evp/e_des.c evp/e_idea.c evp/encode.c evp/e_null.c evp/e_old.c evp/e_rc2.c evp/e_rc4.c evp/e_rc4_hmac_md5.c evp/e_rc5.c evp/e_seed.c evp/evp_acnf.c evp/evp_cnf.c evp/evp_enc.c evp/evp_err.c evp/evp_key.c evp/evp_lib.c evp/evp_pbe.c evp/evp_pkey.c evp/e_xcbc_d.c evp/m_dss1.c evp/m_dss.c evp/m_ecdsa.c evp/m_md2.c evp/m_md4.c evp/m_md5.c evp/m_mdc2.c evp/m_null.c evp/m_ripemd.c evp/m_sha1.c evp/m_sha.c evp/m_sigver.c evp/m_wp.c evp/names.c evp/openbsd_hw.c evp/p5_crpt2.c evp/p5_crpt.c evp/p_dec.c evp/p_enc.c evp/p_lib.c evp/pmeth_fn.c evp/pmeth_gn.c evp/pmeth_lib.c evp/p_open.c evp/p_seal.c evp/p_sign.c evp/p_verify.c cversion.c threads/th-lock.c krb5/krb5_asn.c des/ecb_enc.c des/set_key.c des/enc_writ.c des/fcrypt.c des/cfb_enc.c des/cfb64enc.c des/ede_cbcm_enc.c des/cfb64ede.c des/des_old.c des/enc_read.c des/cbc_enc.c des/ofb_enc.c des/des_old2.c des/cbc_cksm.c des/cbc3_enc.c des/fcrypt_b.c des/des_enc.c des/ncbc_enc.c des/rpc_enc.c des/xcbc_enc.c  des/ecb3_enc.c des/ofb64ede.c des/qud_cksm.c des/ofb64enc.c des/pcbc_enc.c des/str2key.c des/read2pwd.c des/rand_key.c buffer/buffer.c buffer/buf_err.c buffer/buf_str.c mem_dbg.c rc2/rc2cfb64.c rc2/rc2_ecb.c rc2/rc2_skey.c rc2/rc2ofb64.c rc2/rc2_cbc.c bn/bn_rand.c bn/bn_sqrt.c bn/bn_mul.c bn/bn_exp.c bn/bn_const.c bn/bn_print.c bn/bn_gcd.c bn/bn_word.c bn/bn_div.c bn/bn_gf2m.c bn/bn_mod.c bn/bn_mont.c bn/bn_exp2.c bn/vms-helper.c bn/bn_asm.c bn/bn_recp.c bn/bn_shift.c bn/bn_depr.c bn/bn_mpi.c bn/bn_kron.c bn/bn_ctx.c bn/bn_prime.c bn/bn_err.c bn/bn_nist.c bn/bn_sqr.c bn/bn_blind.c bn/bn_lib.c bn/bn_x931p.c bn/bn_add.c cpt_err.c lhash/lh_stats.c lhash/lhash.c cryptlib.c ripemd/rmd_one.c ripemd/rmd_dgst.c modes/wrap128.c modes/ccm128.c modes/gcm128.c modes/ofb128.c modes/cfb128.c modes/ctr128.c modes/cts128.c modes/cbc128.c modes/xts128.c ebcdic.c s390xcap.c x509/x509_att.c x509/x509_v3.c x509/x509type.c x509/by_file.c x509/x509_lu.c x509/x509_vpm.c x509/x509cset.c x509/x509spki.c x509/x509_trs.c x509/x509_ext.c x509/x_all.c x509/x509_d2.c x509/x509_req.c x509/x509_set.c x509/x509rset.c x509/x509name.c x509/x509_def.c x509/x509_txt.c x509/x509_r2x.c x509/x509_obj.c x509/x509_vfy.c x509/x509_cmp.c x509/by_dir.c x509/x509_err.c md5/md5_one.c md5/md5_dgst.c ocsp/ocsp_asn.c ocsp/ocsp_prn.c ocsp/ocsp_ext.c ocsp/ocsp_ht.c ocsp/ocsp_cl.c ocsp/ocsp_vfy.c ocsp/ocsp_lib.c ocsp/ocsp_srv.c ocsp/ocsp_err.c md4/md4_dgst.c md4/md4_one.c dso/dso_lib.c dso/dso_dlfcn.c dso/dso_win32.c dso/dso_beos.c dso/dso_openssl.c dso/dso_vms.c dso/dso_dl.c dso/dso_null.c dso/dso_err.c ex_data.c ui/ui_lib.c ui/ui_openssl.c ui/ui_util.c ui/ui_compat.c ui/ui_err.c pkcs7/pk7_dgst.c pkcs7/pkcs7err.c pkcs7/pk7_attr.c pkcs7/pk7_lib.c pkcs7/pk7_doit.c pkcs7/bio_pk7.c pkcs7/pk7_asn1.c pkcs7/pk7_mime.c pkcs7/pk7_smime.c mem.c pqueue/pqueue.c comp/c_rle.c comp/comp_err.c comp/c_zlib.c comp/comp_lib.c rc4/rc4_utl.c rc4/rc4_skey.c rc4/rc4_enc.c)
LOCAL_CFLAGS := $(local_c_flags) -fexceptions -frtti -fvisibility=hidden -fdata-sections -ffunction-sections
LOCAL_C_INCLUDES := $(local_c_includes)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/openssl $(LOCAL_PATH)/openssl/include $(LOCAL_PATH)/openssl/crypto
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := crypto
include $(BUILD_STATIC_LIBRARY)
