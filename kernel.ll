; ModuleID = '__dpex_reduction_parfor_1$7'
source_filename = "<string>"
target datalayout = "e-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "spir64-unknown-unknown"

@_ZN08NumbaEnv13_3cdynamic_3e36__dpex_reduction_parfor_1_247dpex_fnB2v7B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE13NdItem_3c1_3e11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE17LocalAccessorTypeIiLi1E1C10opencl_gpuE17LocalAccessorTypeIiLi1E1C10opencl_gpuE = common local_unnamed_addr global i8* null
@_ZN08NumbaEnv10numba_dpex15kernel_api_impl5spirv9overloads25_index_space_id_overloads20ol_nd_item_get_group12_3clocals_3e36ol_nd_item_get_group_impl_248dpex_fnB2v8B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE13NdItem_3c1_3e = common local_unnamed_addr global i8* null
@_ZN08NumbaEnv10numba_dpex15kernel_api_impl5spirv9overloads25_index_space_id_overloads23generate_index_overload12_3clocals_3e17ol_item_gen_index12_3clocals_3e33ol_item_get_index_impl_249dpex_fnB2v9B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE13NdItem_3c1_3ex = common local_unnamed_addr global i8* null
@__spirv_BuiltInGlobalInvocationId = external dso_local local_unnamed_addr addrspace(1) constant <3 x i64>, align 32
@_ZN08NumbaEnv10numba_dpex15kernel_api_impl5spirv9overloads25_index_space_id_overloads23generate_index_overload12_3clocals_3e17ol_item_gen_index12_3clocals_3e34ol_item_get_index_impl_2410dpex_fnB3v10B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE13NdItem_3c1_3ex = common local_unnamed_addr global i8* null
@__spirv_BuiltInLocalInvocationId = external dso_local local_unnamed_addr addrspace(1) constant <3 x i64>, align 32
@_ZN08NumbaEnv10numba_dpex15kernel_api_impl5spirv9overloads25_index_space_id_overloads23generate_index_overload12_3clocals_3e17ol_item_gen_index12_3clocals_3e34ol_item_get_index_impl_2411dpex_fnB3v11B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE12Group_3c1_3ex = common local_unnamed_addr global i8* null
@__spirv_BuiltInWorkgroupSize = external dso_local local_unnamed_addr addrspace(1) constant <3 x i64>, align 32
@_ZN08NumbaEnv10numba_dpex15kernel_api_impl5spirv9overloads25_index_space_id_overloads23generate_index_overload12_3clocals_3e17ol_item_gen_index12_3clocals_3e34ol_item_get_index_impl_2412dpex_fnB3v12B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE12Group_3c1_3ex = common local_unnamed_addr global i8* null
@__spirv_BuiltInWorkgroupId = external dso_local local_unnamed_addr addrspace(1) constant <3 x i64>, align 32
@_ZN08NumbaEnv10numba_dpex15kernel_api_impl5spirv9overloads24_group_barrier_overloads16ol_group_barrier12_3clocals_3e34_ol_group_barrier_impl_2413dpex_fnB3v13B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE12Group_3c1_3eN34omitted_28default_3d_3cMemoryScope23WORK_GROUP_3a_202_3e_29E = common local_unnamed_addr global i8* null

; Function Attrs: norecurse nounwind
define spir_kernel void @kernel(i64 %.1, i64 %.2, i32 addrspace(1)* nocapture readonly %.3, i64 %.4, i64 %.5, i64 %.6, i64 %.7, i32 addrspace(1)* nocapture readonly %.8, i64 %.9, i64 %.10, i64 %.11, i64 %.12, i32 addrspace(1)* nocapture writeonly %.13, i64 %.14, i64 %.15, i64 %.16, i64 %.17, i32 addrspace(1)* nocapture writeonly %.18, i64 %.19, i64 %.20, i64 %.21, i64 %.22, i32 addrspace(3)* nocapture %.23, i64 %.24, i64 %.25, i64 %.26, i64 %.27, i32 addrspace(3)* nocapture %.28, i64 %.29, i64 %.30) local_unnamed_addr #0 {
entry:
  %.6.i296.i = load i64, i64 addrspace(1)* getelementptr (<3 x i64>, <3 x i64> addrspace(1)* @__spirv_BuiltInGlobalInvocationId, i64 0, i64 0), align 32
  %.7.i297.i = icmp ult i64 %.6.i296.i, 2147483648
  tail call void @llvm.assume(i1 %.7.i297.i) #3
  %.6.i293.i = load i64, i64 addrspace(1)* getelementptr (<3 x i64>, <3 x i64> addrspace(1)* @__spirv_BuiltInLocalInvocationId, i64 0, i64 0), align 32
  %.5.i289300.i = load <6 x i32>, <6 x i32> addrspace(1)* bitcast (<3 x i64> addrspace(1)* @__spirv_BuiltInWorkgroupSize to <6 x i32> addrspace(1)*), align 32
  %.6.i.i = load i64, i64 addrspace(1)* getelementptr (<3 x i64>, <3 x i64> addrspace(1)* @__spirv_BuiltInWorkgroupId, i64 0, i64 0), align 32
  %.7.i.i = icmp ult i64 %.6.i.i, 2147483648
  tail call void @llvm.assume(i1 %.7.i.i) #3
  %.607.i = getelementptr i32, i32 addrspace(1)* %.3, i64 %.6.i296.i
  %.608.i = load i32, i32 addrspace(1)* %.607.i, align 4
  %.638.i = getelementptr i32, i32 addrspace(1)* %.8, i64 %.6.i296.i
  %.639.i = load i32, i32 addrspace(1)* %.638.i, align 4
  %.724.i = sub i32 %.608.i, %.639.i
  %.642.i = add i32 %.639.i, %.608.i
  %.763.i = getelementptr i32, i32 addrspace(3)* %.23, i64 %.6.i293.i
  store i32 %.724.i, i32 addrspace(3)* %.763.i, align 4
  %.798.i = getelementptr i32, i32 addrspace(3)* %.28, i64 %.6.i293.i
  store i32 %.642.i, i32 addrspace(3)* %.798.i, align 4
  %.820298.lhs.trunc.i = extractelement <6 x i32> %.5.i289300.i, i64 0
  %.850.not.i = icmp ult i32 %.820298.lhs.trunc.i, 2
  br i1 %.850.not.i, label %B176.i, label %B94.endif.preheader.i

B94.endif.preheader.i:                            ; preds = %entry
  %.820298299.i = lshr i32 %.820298.lhs.trunc.i, 1
  %.820298.zext.i = zext i32 %.820298299.i to i64
  br label %B94.endif.i

B112.i:                                           ; preds = %B94.endif.i
  %.219.i = load i32, i32 addrspace(3)* %.763.i, align 4
  %.222.i = add nsw i64 %stride0.130.1.0.i, %.6.i293.i
  %.236.i = icmp slt i64 %.222.i, 0
  %.237.i = select i1 %.236.i, i64 %.24, i64 0
  %.238.i = add i64 %.237.i, %.222.i
  %.251.i = getelementptr i32, i32 addrspace(3)* %.23, i64 %.238.i
  %.252.i = load i32, i32 addrspace(3)* %.251.i, align 4
  %.255.i = add i32 %.252.i, %.219.i
  store i32 %.255.i, i32 addrspace(3)* %.763.i, align 4
  %.318.i = load i32, i32 addrspace(3)* %.798.i, align 4
  %.336.i = select i1 %.236.i, i64 %.29, i64 0
  %.337.i = add i64 %.336.i, %.222.i
  %.350.i = getelementptr i32, i32 addrspace(3)* %.28, i64 %.337.i
  %.351.i = load i32, i32 addrspace(3)* %.350.i, align 4
  %.354.i = add i32 %.351.i, %.318.i
  store i32 %.354.i, i32 addrspace(3)* %.798.i, align 4
  br label %B160.i

B160.i:                                           ; preds = %B94.endif.i, %B112.i
  %0 = lshr i64 %stride0.130.1.0.i, 1
  %.397.i = icmp ugt i64 %stride0.130.1.0.i, 1
  br i1 %.397.i, label %B94.endif.i, label %B176.i

B176.i:                                           ; preds = %B160.i, %entry
  %.413.i = icmp eq i64 %.6.i293.i, 0
  br i1 %.413.i, label %B184.i, label %_ZN13_3cdynamic_3e36__dpex_reduction_parfor_1_247dpex_fnB2v7B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE13NdItem_3c1_3e11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE17LocalAccessorTypeIiLi1E1C10opencl_gpuE17LocalAccessorTypeIiLi1E1C10opencl_gpuE.exit

B184.i:                                           ; preds = %B176.i
  %.446.i = load i32, i32 addrspace(3)* %.23, align 4
  %.480.i = getelementptr i32, i32 addrspace(1)* %.18, i64 %.6.i.i
  store i32 %.446.i, i32 addrspace(1)* %.480.i, align 4
  %.515.i = load i32, i32 addrspace(3)* %.28, align 4
  %.549.i = getelementptr i32, i32 addrspace(1)* %.13, i64 %.6.i.i
  store i32 %.515.i, i32 addrspace(1)* %.549.i, align 4
  br label %_ZN13_3cdynamic_3e36__dpex_reduction_parfor_1_247dpex_fnB2v7B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE13NdItem_3c1_3e11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE17LocalAccessorTypeIiLi1E1C10opencl_gpuE17LocalAccessorTypeIiLi1E1C10opencl_gpuE.exit

B94.endif.i:                                      ; preds = %B160.i, %B94.endif.preheader.i
  %stride0.130.1.0.i = phi i64 [ %0, %B160.i ], [ %.820298.zext.i, %B94.endif.preheader.i ]
  tail call spir_func void @_Z22__spirv_ControlBarrierjjj(i32 2, i32 2, i32 912) #2
  %.187.i = icmp slt i64 %.6.i293.i, %stride0.130.1.0.i
  br i1 %.187.i, label %B112.i, label %B160.i

_ZN13_3cdynamic_3e36__dpex_reduction_parfor_1_247dpex_fnB2v7B70c8tJTIcFKzyF2ILShI4CrgQElUaPPSRhSEJBEkCNfJhEEcwoVH_2fZphSkVmgCAA_3d_3dE13NdItem_3c1_3e11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE11DpnpNdArrayIiLi1E1C10opencl_gpuE17LocalAccessorTypeIiLi1E1C10opencl_gpuE17LocalAccessorTypeIiLi1E1C10opencl_gpuE.exit: ; preds = %B176.i, %B184.i
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: convergent nounwind
declare spir_func void @_Z22__spirv_ControlBarrierjjj(i32, i32, i32) local_unnamed_addr #2

attributes #0 = { norecurse nounwind }
attributes #1 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { convergent nounwind }
attributes #3 = { nounwind }
